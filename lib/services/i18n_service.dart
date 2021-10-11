import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:shared_preferences/shared_preferences.dart';

import 'package:cardowo/config/environment.dart' as env;
import 'package:cardowo/config/lang_key.dart';
import 'package:cardowo/views/root.dart';

export 'package:cardowo/config/lang_key.dart';
export 'package:cardowo/services/toast_service.dart';

enum LangCode {
  enUS,
  zhTW,
  zhCN,
}

Map<LangCode, String> langOption = {
  LangCode.enUS: 'English',
  LangCode.zhTW: '繁體中文',
  LangCode.zhCN: '简体中文',
};

class I18nService {
  final Locale locale;
  Map<String, Map<String, Map<String, String>>> get _i18nData =>
      env.APP_STORE_DEMO_MODE
          ? i18nDataForAppStore(locale)
          : i18nDataForNormal(locale);

  I18nService(this.locale);

  static I18nService of(BuildContext context) {
    return Localizations.of<I18nService>(context, I18nService)!;
  }

  Map<String, String> getDict({
    String? languageCode,
    String? countryCode,
  }) {
    String _languageCode = languageCode ?? locale.languageCode;
    String _countryCode = countryCode ?? locale.countryCode!;

    return _i18nData[_languageCode]![_countryCode]!;
  }

  String getText(String key, {String? languageCode, String? countryCode}) =>
      getDict(languageCode: languageCode, countryCode: countryCode)[key]!;
}

class I18nDelegate extends LocalizationsDelegate<I18nService> {
  Locale _customLocale = const Locale('zh', 'TW');
  static final I18nDelegate _instance = I18nDelegate._();

  factory I18nDelegate() {
    return _instance;
  }

  I18nDelegate._();

  Locale getLocale() {
    return _customLocale;
  }

  LangCode getLangCode() {
    Locale _locale = getLocale();
    Map<String, LangCode> _map = {
      'en-US': LangCode.enUS,
      'zh-CN': LangCode.zhCN,
      'zh-TW': LangCode.zhTW,
    };
    return isSupported(_locale)
        ? _map['${_locale.languageCode}-${_locale.countryCode}']!
        : LangCode.zhCN;
  }

  @override
  bool isSupported(Locale locale) => [
        'en-US',
        'zh-CN',
        'zh-TW',
      ].contains('${locale.languageCode}-${locale.countryCode}');

  @override
  Future<I18nService> load(Locale locale) {
    SynchronousFuture<I18nService> _ =
        SynchronousFuture<I18nService>(I18nService(_customLocale));
    return _;
  }

  @override
  bool shouldReload(I18nDelegate old) => false;

  void setupLocale(BuildContext context, LangCode langCode) {
    _getLocaleByLangCode(langCode);
    setLocalLocale(langCode);
    Root.setLocale(context);
  }

  void _getLocaleByLangCode(LangCode langCode) {
    Map<LangCode, List<String>> _map = {
      LangCode.enUS: ['en', 'US'],
      LangCode.zhTW: ['zh', 'TW'],
      LangCode.zhCN: ['zh', 'CN'],
    };

    _customLocale = Locale(_map[langCode]![0], _map[langCode]![1]);
  }

  Future<void> getLocalLocale() async {
    SharedPreferences _perf = await SharedPreferences.getInstance();
    _getLocaleByLangCode(
        LangCode.values[_perf.getInt('charon_lang') ?? LangCode.zhTW.index]);
  }

  Future<void> setLocalLocale(LangCode _code) async {
    SharedPreferences _perf = await SharedPreferences.getInstance();
    _perf.setInt('charon_lang', _code.index);
  }
}
