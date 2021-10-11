import 'package:barcode_scan2/gen/protos/protos.pbenum.dart';
import 'package:flutter/material.dart';
import 'package:cardowo/config/lang_key.dart';
import 'package:cardowo/services/scan_service.dart';
import 'package:cardowo/services/i18n_service.dart';

class BarcodeDetectorTile extends StatelessWidget {
  const BarcodeDetectorTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, String> langDict = I18nService.of(context).getDict();
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        child: Stack(
          children: const <Widget>[
            Icon(
              Icons.remove,
            ),
            Icon(
              Icons.crop_free,
            )
          ],
        ),
      ),
      title: Text(langDict[LangKey.detectBarcode]!),
      onTap: () => ScanService().pureScan().then((_barcodeResult) async {
        showToast(
          '${langDict[LangKey.barcodeType]} ${_barcodeResult.type} ${_barcodeResult.type == ResultType.Barcode ? langDict[LangKey.supported] : langDict[LangKey.notSupported]}!',
        );
      }),
    );
  }
}
