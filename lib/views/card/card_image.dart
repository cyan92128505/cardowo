// ignore_for_file: unnecessary_null_comparison

import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';

import 'package:cardowo/services/card_service.dart';
import 'package:cardowo/config/card_default.dart';

enum _ImageType {
  assets,
  file,
  memory,
  unknown,
}

class CardImage extends StatefulWidget {
  final bool cardFrontSide;
  const CardImage({Key? key, this.cardFrontSide = true}) : super(key: key);

  const CardImage.front({Key? key, this.cardFrontSide = true})
      : super(key: key);
  const CardImage.back({Key? key, this.cardFrontSide = false})
      : super(key: key);

  @override
  _CardImageState createState() => _CardImageState();
}

class _CardImageState extends State<CardImage> {
  final CardFormInstance _target = CardService().target;
  String _path = '';
  late Image _image;

  @override
  void initState() {
    _setupPathDefault();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _image = CardImageGenerator.setImage(
      _path,
      imageData:
          widget.cardFrontSide ? _target.frontImage : _target.reverseImage,
    );

    return CardImageGenerator().build(
      imageWidget: _image,
      onTap: () => _openCameraDialog(),
      context: context,
    );
  }

  void _setupPathDefault() {
    String _targetPath =
        '${widget.cardFrontSide ? _target.frontSide : _target.reverseSide}';

    _path = _targetPath;

    if (_targetPath == '') {
      _path =
          widget.cardFrontSide ? EMPTY_CARD_FRONT_PATH : EMPTY_CARD_BACK_PATH;
    }
  }

  void _openCameraDialog() {
    _setupPathDefault();
    setState(() {});

    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => CameraDialog(cardFrontSide: widget.cardFrontSide),
    //   ),
    // ).then((_) {
    //   String _result =
    //       '${widget.cardFrontSide ? _target.frontSide : _target.reverseSide}';
    //   if (_result != '') {
    //     setState(() {
    //       _path =
    //           '${widget.cardFrontSide ? _target.frontSide : _target.reverseSide}';
    //     });
    //   }
    // });
  }
}

class CardImageGenerator {
  CardImageGenerator();
  Widget build({
    required Image imageWidget,
    void Function()? onTap,
    void Function()? onLongPress,
    bool needCamera = true,
    required BuildContext context,
  }) {
    List<Widget> _list = [];

    _list.add(GestureDetector(
      child: Card(
        elevation: 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4.0),
          child: imageWidget,
        ),
      ),
      onLongPress: () {
        if (onLongPress != null) onLongPress();
      },
      onTap: () {
        if (onTap != null) onTap();
      },
    ));

    if (needCamera == true) {
      _list.add(
        Positioned(
          bottom: 0,
          right: 0,
          child: IconButton(
            icon: Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                const Icon(
                  Icons.camera_alt,
                  size: 20.0,
                  color: Colors.white,
                )
              ],
            ),
            onPressed: () {
              if (onTap != null) onTap();
            },
          ),
        ),
      );
    }

    return Expanded(
      child: Stack(
        children: _list,
      ),
    );
  }

  static Image setImage(String path, {Uint8List? imageData}) {
    _ImageType _status = detectImageType(path);

    Map<_ImageType, Image Function()> _map = {
      _ImageType.assets: () => Image.asset(
            path,
            fit: BoxFit.contain,
          ),
      _ImageType.memory: () => Image.memory(imageData!),
      _ImageType.file: () {
        Image _image;
        try {
          _image = Image(
            image:
                FileImage(File('${CardService().getImageFolderPath()}$path')),
            fit: BoxFit.contain,
          );
        } catch (e) {
          _image = Image.asset(
            EMPTY_CARD_FRONT_PATH,
            fit: BoxFit.contain,
          );
        }
        return _image;
      },
      _ImageType.unknown: () => Image.asset(
            EMPTY_CARD_FRONT_PATH,
            fit: BoxFit.contain,
          ),
    };

    return _map[_status]!();
  }

  static _ImageType detectImageType(String path) {
    List<String> _detectList = path.split('/');

    if (_detectList.contains('assets')) {
      return _ImageType.assets;
    }

    if (_detectList.contains('memory')) {
      return _ImageType.memory;
    }

    if (path != null && path.contains('.png')) {
      return _ImageType.file;
    }

    return _ImageType.unknown;
  }
}
