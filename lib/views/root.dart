import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:cardowo/services/i18n_service.dart';
import 'package:cardowo/routes.dart';

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  _RootState createState() => _RootState();

  static void setLocale(BuildContext context) async {
    _RootState? state = context.findAncestorStateOfType<_RootState>();
    state?.setupLocale();
  }
}

class _RootState extends State<Root> with WidgetsBindingObserver {
  Locale? locale;
  setupLocale() {
    locale = I18nDelegate().getLocale();
    setState(() {});
  }

  @override
  void initState() {
    I18nDelegate().getLocalLocale().then((_) {
      setupLocale();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    if (locale == null) {
      return const CircularProgressIndicator();
    } else {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CardOwO',
        initialRoute: AppRoutes.splash,
        onGenerateRoute: (RouteSettings settings) =>
            RouteManager.onGenerateRoute(settings),
        localizationsDelegates: [
          I18nDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          DefaultCupertinoLocalizations.delegate,
        ],
        locale: locale,
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('zh', 'CN'),
          Locale('zh', 'TW'),
          Locale.fromSubtags(
              languageCode: 'zh', scriptCode: 'hans', countryCode: 'CN'),
          Locale.fromSubtags(
              languageCode: 'zh', scriptCode: 'hant', countryCode: 'TW'),
        ],
      );
    }
  }
}
