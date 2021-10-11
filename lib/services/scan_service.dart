import 'dart:core';
import 'dart:async';

import 'package:barcode_scan2/barcode_scan2.dart';

class ScanService {
  static final _instance = ScanService._();

  factory ScanService({String? key, String? iv}) {
    return _instance;
  }

  ScanService._();

  Future<ScanResult> pureScan() async {
    ScanResult barcodeReuslt = (await BarcodeScanner.scan());

    return barcodeReuslt;
  }

  Future<String> scan() async {
    String barcode = (await BarcodeScanner.scan()).rawContent;

    return barcode;
  }
}
