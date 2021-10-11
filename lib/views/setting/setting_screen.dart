import 'package:flutter/material.dart';
import 'package:direct_select_flutter/direct_select_container.dart';

import 'package:cardowo/services/i18n_service.dart';
import 'package:cardowo/views/setting/about.dart';
import 'package:cardowo/views/setting/help_page.dart';
import 'package:cardowo/views/setting/terms_of_use_page.dart';
import 'package:cardowo/views/setting/sort_tile.dart';
import 'package:cardowo/views/setting/barcode_detector.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  Map<String, String>? langDict;
  @override
  Widget build(BuildContext context) {
    langDict = I18nService.of(context).getDict();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(langDict?[LangKey.setting] ?? ''),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    return DirectSelectContainer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ListTile(leading: Text(langDict?[LangKey.generalTitle] ?? '')),
            const SortTile(),
            const BarcodeDetectorTile(),
            ListTile(leading: Text(langDict?[LangKey.aboutTitle] ?? '')),
            const HelpTile(),
            const TermsOfUseTile(),
            const AboutTile(),
          ],
        ),
      ),
    );
  }
}
