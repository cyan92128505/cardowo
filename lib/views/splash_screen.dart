// ignore_for_file: unused_field

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:cardowo/config/lang_key.dart';
import 'package:cardowo/models/card.dart';
import 'package:cardowo/services/i18n_service.dart';
import 'package:cardowo/resources/charon_icon.dart';
import 'package:cardowo/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _mTimer;
  bool _oldchecked = false;
  final bool _darkMode = false;

  late Map<String, String> _i18nData;

  void _handleAfterInit() async {
    _mTimer = Timer(const Duration(milliseconds: 1500), () async {
      CardSqlite _db = CardSqlite();
      await _db.openSqlite();
      List cards = await _db.queryAll();
      _oldchecked = await _termAgreeStatus();

      if (cards.isEmpty && !_oldchecked) {
        Navigator.pushReplacementNamed(context, AppRoutes.settingTermsOfUse);
      } else {
        Navigator.of(context).pushReplacementNamed(AppRoutes.home);
      }
    });
  }

  Future<bool> _termAgreeStatus() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('charon_terms_agree') ?? false;
  }

  @override
  initState() {
    _handleAfterInit();

    super.initState();
  }

  @override
  void dispose() {
    _mTimer?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _size = 0.6 *
        min(
          MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height,
        );
    _i18nData = I18nService.of(context).getDict();

    return Material(
      color: _darkMode ? const Color(0xFF212121) : const Color(0xFFE5E5E5),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(),
            SvgPicture.string(
              _darkMode ? CharonIcon.darkMode : CharonIcon.lightMode,
              width: _size,
              height: _size,
            ),
            SizedBox(
              height: _size / 8,
            ),
            Text(
              I18nService.of(context).getText(LangKey.appName).toUpperCase(),
              style: TextStyle(
                  fontSize: 48.0,
                  fontFamily: 'FugazOne',
                  color: _darkMode
                      ? const Color.fromRGBO(154, 225, 253, 1)
                      : const Color.fromRGBO(2, 83, 115, 1)),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
