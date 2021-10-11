// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import 'package:cardowo/config/lang_key.dart';
import 'package:cardowo/services/i18n_service.dart';
import 'package:cardowo/views/card/card_home.dart';
import 'package:cardowo/views/setting/setting_screen.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({Key? key}) : super(key: key);

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<LayoutPage> {
  int _currentIndex = 0;
  var _i18nData;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _i18nData = I18nService.of(context).getDict();

    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          CardHomePage(),
          SettingPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.credit_card,
              size: 36,
            ),
            label: _i18nData[LangKey.card],
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.settings,
              size: 36,
            ),
            label: _i18nData[LangKey.setting],
          ),
        ],
        selectedItemColor: Theme.of(context).primaryColor,
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
