import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:package_info/package_info.dart';

import 'package:cardowo/resources/cardowo_icon.dart';
import 'package:cardowo/services/i18n_service.dart';
import 'package:cardowo/config/environment.dart';
import 'package:cardowo/views/setting/mail_tile.dart';
import 'package:cardowo/routes.dart';

class AboutTile extends StatelessWidget {
  const AboutTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        child: SvgPicture.string(
          CardowoIcon.lightMode,
          color: Colors.white,
          width: 24,
          height: 24,
        ),
      ),
      title: Text(I18nService.of(context).getDict()[LangKey.aboutApp]!),
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.settingAbout);
      },
    );
  }
}

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(I18nService.of(context).getText(LangKey.aboutApp)),
      ),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    List<Widget> _listTiles = [
      ListTile(
          leading: Text(I18nService.of(context).getText(LangKey.generalTitle))),
      ListTile(
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).primaryColor,
          foregroundColor: Colors.white,
          child: const Icon(Icons.info_outline),
        ),
        title: Text(I18nService.of(context).getText(LangKey.version)),
        subtitle: FutureBuilder<Widget>(
          future: _versionText(),
          builder: (
            BuildContext context,
            AsyncSnapshot<Widget> snapshot,
          ) {
            if (snapshot.hasData) {
              return snapshot.data as Widget;
            } else {
              return const Text("");
            }
          },
        ),
      ),
      ListTile(
        leading: Text(I18nService.of(context).getText(LangKey.copyright)),
      ),
      const MailTile(),
      ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.white,
          child: SvgPicture.string(
            CardowoIcon.logo,
            width: 48,
            height: 48,
          ),
        ),
        title: const Text('AJHOME'),
        subtitle: Text(
          'Copyright © ${DateTime.now().year} - All rights reserved',
        ),
        onTap: () {
          setState(() {});
        },
      ),
    ];

    return ListView(
      padding: EdgeInsets.zero,
      children: _listTiles,
    );
  }

  Future<Widget> _versionText() async {
    String version = APP_VERSION;
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return Text(Platform.isAndroid ? packageInfo.version : version);
  }
}
