// ignore_for_file: no_logic_in_create_state

import 'dart:math' as math;
import 'package:flutter/material.dart';

import 'package:cardowo/services/card_service.dart';
import 'package:cardowo/views/card/barcode_type_option.dart';

class BarcodeView extends StatefulWidget {
  final CardFormInstance instance;

  const BarcodeView({Key? key, required this.instance}) : super(key: key);

  @override
  _BarcodeViewState createState() => _BarcodeViewState(instance);
}

class _BarcodeViewState extends State<BarcodeView> {
  late double brightness;
  final CardFormInstance _instance;

  _BarcodeViewState(
    this._instance,
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            child: RotatedBox(
              quarterTurns: 1,
              child: BarcodeTypeOption.light(
                type: _instance.barcodeType,
                codeValue: _instance.barcodeNumber,
                unitSize: size.height * 0.1,
                height: math.min(size.width, size.height) * 0.8,
              ),
            ),
          ),
          Positioned(
            top: size.height / 20,
            left: 0,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: size.height / 20,
                color: Colors.black,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ],
      ),
    );
  }
}
