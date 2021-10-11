// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:barcode_widgets/barcode_flutter.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'package:cardowo/models/card.dart';
import 'package:cardowo/services/card_service.dart';

class BarcodeTypeOptionList extends StatefulWidget {
  const BarcodeTypeOptionList();
  @override
  _BarcodeTypeOptionListState createState() => _BarcodeTypeOptionListState();
}

class _BarcodeTypeOptionListState extends State<BarcodeTypeOptionList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: _barcodePreview(),
      ),
    );
  }

  List<Widget> _barcodePreview() {
    return BarcodeType.values
        .map((type) => BarcodeTypeOption(
              type: barcodeTypeName[type]!,
              onPressed: () {
                CardService().target.barcodeType = barcodeTypeName[type]!;
                Navigator.of(context).pop();
              },
            ))
        .toList();
  }
}

class BarcodeTypeOption extends StatelessWidget {
  final String? type;
  final String? codeValue;
  final Function? onPressed;
  final double? unitSize;
  final double? height;
  final Color? textColor;
  final bool? isLarge;

  const BarcodeTypeOption({
    this.type,
    this.codeValue,
    this.onPressed,
    this.unitSize = 64.0,
    this.height,
    this.textColor,
    this.isLarge = false,
  });

  const BarcodeTypeOption.light({
    this.type,
    this.codeValue,
    this.onPressed,
    this.unitSize = 64.0,
    this.height,
    this.textColor = Colors.black,
    this.isLarge = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
      child: SizedBox(
        width: double.infinity,
        child: GestureDetector(
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: <Widget>[
              Center(
                child: Column(
                  children: <Widget>[
                    generateCodeImage(type, codeValue),
                    Text(
                      codeValue ?? type!,
                      overflow: TextOverflow.fade,
                      maxLines: 1,
                      softWrap: false,
                      style: TextStyle(
                        color: textColor ?? Theme.of(context).bottomAppBarColor,
                        fontSize: unitSize! / 3,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          onTap: () {
            if (onPressed != null) {
              onPressed!();
            }
          },
        ),
      ),
    );
  }

  Widget generateCodeImage(String? type, String? _codeValue) {
    return type == barcodeTypeName[BarcodeType.QR_CODE]
        ? qrcodeImage(_codeValue)
        : barCodeImage(_codeValue, barcodeType[type]);
  }

  Widget qrcodeImage(String? value) {
    return QrImage(
      backgroundColor: Colors.white,
      data: value ?? '00000000',
      version: QrVersions.auto,
      size: unitSize! * 3,
    );
  }

  Widget barCodeImage(String? value, BarCodeType? type) {
    String _value = value ?? defaultBarcodeValue[type]!;
    double _lineWidth = _value.length > 10
        ? unitSize! / 48
        : unitSize! / (isLarge == true ? 24 : 48);

    BarCodeParams barCodeParams = _getBarcodeParams(
      data: _value,
      type: type!,
      lineWidth: _lineWidth,
      barHeight: height ?? unitSize!,
      hasText: false,
    );

    return BarCodeImage(
      params: barCodeParams,
      onError: (error) {
        // print('error = $error');
      },
    );
  }

  BarCodeParams _getBarcodeParams({
    required BarCodeType type,
    required String data,
    required double lineWidth,
    required double barHeight,
    required bool hasText,
  }) {
    switch (type) {
      case BarCodeType.CodeEAN13:
        return EAN13BarCodeParams(data,
            withText: hasText, lineWidth: lineWidth, barHeight: barHeight);
      case BarCodeType.CodeEAN8:
        return EAN8BarCodeParams(data,
            withText: hasText, lineWidth: lineWidth, barHeight: barHeight);
      case BarCodeType.Code39:
        return Code39BarCodeParams(data,
            withText: hasText, lineWidth: lineWidth, barHeight: barHeight);
      case BarCodeType.Code93:
        return Code93BarCodeParams(data,
            withText: hasText, lineWidth: lineWidth, barHeight: barHeight);
      case BarCodeType.CodeUPCA:
        return UPCABarCodeParams(data,
            withText: hasText, lineWidth: lineWidth, barHeight: barHeight);
      case BarCodeType.CodeUPCE:
        return UPCEBarCodeParams(data,
            withText: hasText, lineWidth: lineWidth, barHeight: barHeight);
      case BarCodeType.Code128:
        return Code128BarCodeParams(data,
            withText: hasText, lineWidth: lineWidth, barHeight: barHeight);
      case BarCodeType.Codabar:
        break;
    }

    return EAN13BarCodeParams(data,
        withText: hasText, lineWidth: lineWidth, barHeight: barHeight);
  }
}
