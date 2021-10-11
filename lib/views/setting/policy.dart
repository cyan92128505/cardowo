import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import 'package:cardowo/services/i18n_service.dart';
import 'package:cardowo/resources/policy_html.dart';

class PolicyPage extends StatefulWidget {
  const PolicyPage({Key? key}) : super(key: key);

  @override
  _PolicyPageState createState() => _PolicyPageState();
}

class _PolicyPageState extends State<PolicyPage> {
  @override
  Widget build(BuildContext context) {
    String appName = I18nService.of(context).getText(LangKey.appName);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(I18nService.of(context).getText(LangKey.privacyPloicy)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 32.0),
          child: Html(
            // onLinkTap: (url) async {
            //   // if (await canLaunch('$url')) {
            //   //   await launch('$url');
            //   // }
            // },
            data: [
              PolicyHTML().cnHTML(appName),
              '<br/><hr/><br/>',
              PolicyHTML().enHTML(appName)
            ].join(''),
          ),
        ),
      ),
    );
  }
}
