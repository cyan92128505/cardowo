import 'package:flutter/painting.dart';

class LangKey {
  static String aboutApp = 'about_app';
  static String aboutTitle = 'about_title';
  static String accepted = 'accepted';
  static String addOtherCard = 'add_other_card';
  static String alertDeleteCard = 'alert_delete_card';
  static String appName = 'app_name';
  static String appSettingContent = 'app_setting_content';
  static String appSettings = 'app_settings';
  static String askUpdateText = 'ask_update_text';
  static String barcodeNumber = 'barcode_number';
  static String barcodeType = 'barcode_type';
  static String barcodeUnsuppoest = 'barcode_unsuppoest';
  static String camera = 'camera';
  static String cancelText = 'cancel_text';
  static String card = 'card';
  static String cardName = 'card_name';
  static String cardNumber = 'card_number';
  static String cardOrderHasChanged = 'card_order_has_changed';
  static String cardSuggestions = 'card_suggestions';
  static String clear = 'clear';
  static String contactUs = 'contact_us';
  static String copyright = 'copyright';
  static String create = 'create';
  static String createDone = 'create_done';
  static String darkThemeTitle = 'dark_theme_title';
  static String declined = 'declined';
  static String delete = 'delete';
  static String describePermission = 'describe_permission';
  static String detectBarcode = 'detect_barcode';
  static String deveolper = 'deveolper';
  static String deviceAuth = 'device_auth';
  static String deviceAuthOn = 'device_auth_on';
  static String done = 'done';
  static String downloadingText = 'download_text';
  static String edit = 'edit';
  static String editDone = 'edit_done';
  static String errorText = 'error_text';
  static String exportCards = 'export_cards';
  static String exportLog = 'export_log';
  static String generalTitle = 'general_title';
  static String helpAddContent = 'help_add_content';
  static String helpAddTitle = 'how_add_title';
  static String helpCodeNotSupportContent = 'not_support_content';
  static String helpCodeNotSupportTitle = 'not_support_title';
  static String helpDeleteContent = 'help_delete_content';
  static String helpDeleteTitle = 'how_delete_title';
  static String helpEditContent = 'hlep_edit_contnet';
  static String helpEditTitle = 'how_edit_title';
  static String helpInformation = 'help_information';
  static String helpOnlineContent = 'help_online';
  static String helpOnlineTitle = 'how_online_title';
  static String helpTitle = 'help';
  static String historyTitle = 'history_title';
  static String httpLog = 'http_log';
  static String needPermission = 'need_permission';
  static String newVersionText = 'new_version_text';
  static String newVersionTitleText = 'new_version_title_text';
  static String no = 'no';
  static String noHistory = 'no_history';
  static String notes = 'notes';
  static String noticeTitle = 'notice';
  static String notSupported = 'not_supported';
  static String nowVersionText = 'now_version_text';
  static String ok = 'ok';
  static String permissionTitle = 'permission_title';
  static String phone = 'phone';
  static String privacyPloicy = 'privacy_ploicy';
  static String qrcodeText = 'qrcode_text';
  static String revoke = 'revoke';
  static String revokeWillReset = 'revoke_will_reset';
  static String scanStart = 'scan_start';
  static String scanText = 'scan_text';
  static String search = 'search';
  static String select = 'select';
  static String setting = 'setting';
  static String sortCardTitle = 'sort_card_title';
  static String startText = 'start_text';
  static String storage = 'storage';
  static String successText = 'success_text';
  static String supported = 'supported';
  static String termsContent = 'terms_content';
  static String termsOfUseTitle = 'terms_of_use_title';
  static String titleText = 'title_text';
  static String uNeedToAgreePrivacy = 'need_to_agree_privacy';
  static String unnamed = 'unnamed';
  static String updateNowText = 'update_now_text';
  static String version = 'version';
  static String yes = 'yes';
  static String youMustAgree = 'must_agree';
}

Map<String, Map<String, Map<String, String>>> i18nDataForNormal(Locale locale) {
  LangDic _langDic = LangDic(locale);
  return {
    'en': {
      'US': _langDic.enUS,
    },
    'zh': {
      'CN': _langDic.zhCN,
      'HK': _langDic.zhCN,
      'TW': _langDic.zhTW,
    }
  };
}

Map<String, Map<String, Map<String, String>>> i18nDataForAppStore(
    Locale locale) {
  LangDic _langDic = LangDic(locale);
  return {
    'en': {
      'US': _langDic.zhCN,
    },
    'zh': {
      'CN': _langDic.zhCN,
      'HK': _langDic.zhCN,
      'TW': _langDic.zhCN,
    }
  };
}

class LangDicTerm {
  final String langKey;
  final String zhTW;
  final String enUS;
  final String zhCN;

  LangDicTerm({
    required this.langKey,
    required this.zhTW,
    required this.enUS,
    required this.zhCN,
  });
}

class LangDic {
  String get appName => getAppName();
  String getAppName() {
    String _languageCode = _locale.languageCode;
    String _countryCode = _locale.countryCode!;
    Map<String, Map<String, String>> _map = {
      'en': {
        'US': 'Cardowo',
      },
      'zh': {
        'CN': 'Cardowo',
        'HK': 'Cardowo',
        'TW': 'Cardowo',
      }
    };
    if (_countryCode.isEmpty ||
        !_map[_languageCode]!.keys.contains(_countryCode)) {
      _countryCode = _map[_languageCode]!.keys.toList()[0];
    }

    return _map[_languageCode]![_countryCode]!;
  }

  final Locale _locale;
  LangDic(Locale locale) : _locale = locale;

  Map<String, String> get enUS => _list
      .asMap()
      .map<String, String>((index, term) => MapEntry(term.langKey, term.enUS));
  Map<String, String> get zhTW => _list
      .asMap()
      .map<String, String>((index, term) => MapEntry(term.langKey, term.zhTW));
  Map<String, String> get zhCN => _list
      .asMap()
      .map<String, String>((index, term) => MapEntry(term.langKey, term.zhCN));

  List<LangDicTerm> get _list => [
        LangDicTerm(
          langKey: LangKey.appName,
          enUS: appName,
          zhTW: appName,
          zhCN: appName,
        ),
        LangDicTerm(
          langKey: LangKey.titleText,
          enUS: '''QuickScan - Universal QR Code Verifier''',
          zhTW: '''快掃 - 泛用二維條碼驗證器''',
          zhCN: '''快扫 - 泛用二维条码验证器''',
        ),
        LangDicTerm(
          langKey: LangKey.scanText,
          enUS: '''SCAN''',
          zhTW: '''掃描''',
          zhCN: '''扫描''',
        ),
        LangDicTerm(
          langKey: LangKey.qrcodeText,
          enUS: '''QRCode''',
          zhTW: '''QRCode''',
          zhCN: '''QRCode''',
        ),
        LangDicTerm(
          langKey: LangKey.successText,
          enUS: '''SUCCESS. Please return to the browser''',
          zhTW: '''成功，請返回瀏覽器''',
          zhCN: '''成功，请返回浏览器''',
        ),
        LangDicTerm(
          langKey: LangKey.errorText,
          enUS: '''ERROR''',
          zhTW: '''失敗''',
          zhCN: '''失败''',
        ),
        LangDicTerm(
          langKey: LangKey.startText,
          enUS: '''START''',
          zhTW: '''開始''',
          zhCN: '''開始''',
        ),
        LangDicTerm(
          langKey: LangKey.newVersionTitleText,
          enUS: '''New Version Update Already''',
          zhTW: '''已有新版本''',
          zhCN: '''已有新版本''',
        ),
        LangDicTerm(
          langKey: LangKey.newVersionText,
          enUS: '''New Version''',
          zhTW: '''新版版本號''',
          zhCN: '''新版版本号''',
        ),
        LangDicTerm(
          langKey: LangKey.nowVersionText,
          enUS: '''Now Version''',
          zhTW: '''目前版本號''',
          zhCN: '''目前版本号''',
        ),
        LangDicTerm(
          langKey: LangKey.askUpdateText,
          enUS: '''Do you wnat to undate now?''',
          zhTW: '''是否立即更新?''',
          zhCN: '''是否立即更新?''',
        ),
        LangDicTerm(
          langKey: LangKey.cancelText,
          enUS: '''Cancel''',
          zhTW: '''取消''',
          zhCN: '''取消''',
        ),
        LangDicTerm(
          langKey: LangKey.updateNowText,
          enUS: '''Update Now.''',
          zhTW: '''更新''',
          zhCN: '''更新''',
        ),
        LangDicTerm(
          langKey: LangKey.downloadingText,
          enUS: '''Downloading...''',
          zhTW: '''下載中...''',
          zhCN: '''下载中...''',
        ),
        LangDicTerm(
          langKey: LangKey.historyTitle,
          enUS: '''History''',
          zhTW: '''歷史記錄''',
          zhCN: '''历史记录''',
        ),
        LangDicTerm(
          langKey: LangKey.noHistory,
          enUS: '''No history''',
          zhTW: '''沒有歷史記錄''',
          zhCN: '''没有历史记录''',
        ),
        LangDicTerm(
          langKey: LangKey.needPermission,
          enUS: '''You need to open these permission.''',
          zhTW: '''必須開啟這些權限''',
          zhCN: '''必须开启这些权限''',
        ),
        LangDicTerm(
          langKey: LangKey.describePermission,
          enUS:
              '''To granted these permission can access device unique id, it keeps website security.''',
          zhTW: '''為了確保帳號的安全性,必須允許權限來獲取唯一裝置碼''',
          zhCN: '''为了确保帐号的安全性,必须允许权限来获取唯一装置码''',
        ),
        LangDicTerm(
          langKey: LangKey.helpInformation,
          enUS: '''help''',
          zhTW: '''使用說明''',
          zhCN: '''使用说明''',
        ),
        LangDicTerm(
          langKey: LangKey.helpAddTitle,
          enUS: '''how do I add a card?''',
          zhTW: '''我要如何新增卡片?''',
          zhCN: '''我要如何新增卡片?''',
        ),
        LangDicTerm(
          langKey: LangKey.helpDeleteTitle,
          enUS: '''how do I delete a card?''',
          zhTW: '''我要如何刪除卡片?''',
          zhCN: '''我要如何删除卡片?''',
        ),
        LangDicTerm(
          langKey: LangKey.helpCodeNotSupportTitle,
          enUS:
              '''The barcode for my card is not supported. What shild I do?''',
          zhTW: '''我的條碼顯示不支援,該怎麼做?''',
          zhCN: '''我的条码显示不支援,该怎么做?''',
        ),
        LangDicTerm(
          langKey: LangKey.helpEditTitle,
          enUS: '''how do I edit a card?''',
          zhTW: '''我要如何編輯卡片?''',
          zhCN: '''我要如何编辑卡片?''',
        ),
        LangDicTerm(
          langKey: LangKey.helpOnlineTitle,
          enUS: '''Can I mangage my cards online''',
          zhTW: '''我可以線上編輯我的卡片嗎？''',
          zhCN: '''我可以线上编辑我的卡片吗？''',
        ),
        LangDicTerm(
          langKey: LangKey.helpAddContent,
          enUS:
              '''On the card overview screen tap on the "+" symbol at the top right side to search for the name of the card you want to add, tap on it to select it. 
If a card is not avaible as a template you can add it at top "Add other card" ''',
          zhTW: '''你可在卡片總覽頁面右上角點選“ +”，然後尋找你要加入卡片，如果沒有相對應的卡片可以點選上方的"添加其他卡片"。''',
          zhCN: '''你可在卡片总览页面右上角点选“ +”，然后寻找你要加入卡片，如果没有相对应的卡片可以点选上方的"添加其他卡片"。''',
        ),
        LangDicTerm(
          langKey: LangKey.helpDeleteContent,
          enUS:
              '''open the card you want to edit and tap in the "pencil" icon, then click the "DELEDT" button to delete this card.''',
          zhTW: '''您想要刪除的卡片，然後點選右上角"鉛筆"圖示，然後點選"刪除"按鈕。''',
          zhCN: '''您想要删除的卡片，然后点选右上角"铅笔"图示，然后点选"删除"按钮。''',
        ),
        LangDicTerm(
          langKey: LangKey.helpCodeNotSupportContent,
          enUS:
              '''If the barcode not support, you can take a photo let this app keep your card screen.''',
          zhTW: '''如果不支持你卡片的條碼格式，你可以拍照記錄卡片的條碼，方便之後使用掃描。''',
          zhCN: '''如果不支持你卡片的条码格式，你可以拍照记录卡片的条码，方便之后使用扫描。''',
        ),
        LangDicTerm(
          langKey: LangKey.helpEditContent,
          enUS:
              '''open the card you want to edit and tap in the "pencil" icon.''',
          zhTW: '''您想要編輯的卡片，然後點選右上角"鉛筆"圖標就可以進行編輯。''',
          zhCN: '''您想要编辑的卡片，然后点选右上角"铅笔"图标就可以进行编辑。''',
        ),
        LangDicTerm(
          langKey: LangKey.helpOnlineContent,
          enUS:
              '''No, we do not upload your data, your cards data just exists in your device, so you cannot manage your card online or on your pc.''',
          zhTW: '''您的卡片資料不會被上傳，所以您無法在網站上或者電腦上進行編輯。''',
          zhCN: '''您的卡片资料不会被上传，所以您无法在网站上或者电脑上进行编辑。''',
        ),
        LangDicTerm(
          langKey: LangKey.darkThemeTitle,
          enUS: '''Dark Theme''',
          zhTW: '''黑暗模式''',
          zhCN: '''黑暗模式''',
        ),
        LangDicTerm(
          langKey: LangKey.permissionTitle,
          enUS: '''Permisison''',
          zhTW: '''權限''',
          zhCN: '''权限''',
        ),
        LangDicTerm(
          langKey: LangKey.sortCardTitle,
          enUS: '''Sort Card''',
          zhTW: '''卡片排列''',
          zhCN: '''卡片排列''',
        ),
        LangDicTerm(
          langKey: LangKey.detectBarcode,
          enUS: '''Detect Barcode''',
          zhTW: '''檢測條碼是否支援''',
          zhCN: '''检测条码是否支援''',
        ),
        LangDicTerm(
          langKey: LangKey.generalTitle,
          enUS: '''General''',
          zhTW: '''一般''',
          zhCN: '''一般''',
        ),
        LangDicTerm(
          langKey: LangKey.aboutTitle,
          enUS: '''About''',
          zhTW: '''關於''',
          zhCN: '''關於''',
        ),
        LangDicTerm(
          langKey: LangKey.helpTitle,
          enUS: '''help''',
          zhTW: '''幫助''',
          zhCN: '''帮助''',
        ),
        LangDicTerm(
          langKey: LangKey.termsOfUseTitle,
          enUS: '''Terms of Use''',
          zhTW: '''使用條款''',
          zhCN: '''使用条款''',
        ),
        LangDicTerm(
          langKey: LangKey.noticeTitle,
          enUS: '''Notice''',
          zhTW: '''注意''',
          zhCN: '''注意''',
        ),
        LangDicTerm(
          langKey: LangKey.termsContent,
          enUS:
              '''The usage of $appName  requires the processing of user data. Which data is processing of purpuse, is described in our Privacy Policy.
        
To provide certain functuonalities, $appName  requests pursuant permissions from your phone.''',
          zhTW: '''使用 $appName 需要處理用戶資料。我們的隱私權政策中說明了哪些資料正在處理。
        
為了提供APP存取資料功能，$appName 會要求您從手機獲得權限。''',
          zhCN: '''使用 $appName 需要处理用户数据。我们的隐私权政策中说明了哪些数据正在处理。
        
为了提供APP存取资料功能，$appName 会要求您从手机获得权限。''',
        ),
        LangDicTerm(
          langKey: LangKey.youMustAgree,
          enUS: '''I have read and agree to the''',
          zhTW: '''我已經閱讀且同意''',
          zhCN: '''我已经阅读且同意''',
        ),
        LangDicTerm(
          langKey: LangKey.privacyPloicy,
          enUS: '''Privacy Ploicy''',
          zhTW: '''隱私權條款''',
          zhCN: '''隐私政策''',
        ),
        LangDicTerm(
          langKey: LangKey.deviceAuth,
          enUS: '''Device verification''',
          zhTW: '''使用裝置驗證''',
          zhCN: '''使用装置验证''',
        ),
        LangDicTerm(
          langKey: LangKey.deviceAuthOn,
          enUS: '''Device Verification Start''',
          zhTW: '''裝置驗證啟動''',
          zhCN: '''装置验证启动''',
        ),
        LangDicTerm(
          langKey: LangKey.setting,
          enUS: '''Setting''',
          zhTW: '''設定''',
          zhCN: '''设定''',
        ),
        LangDicTerm(
          langKey: LangKey.card,
          enUS: '''Card''',
          zhTW: '''卡片''',
          zhCN: '''卡片''',
        ),
        LangDicTerm(
          langKey: LangKey.aboutApp,
          enUS: 'About $appName',
          zhTW: '關於$appName',
          zhCN: '关于$appName',
        ),
        LangDicTerm(
          langKey: LangKey.cardName,
          enUS: '''card name''',
          zhTW: '''卡片名稱''',
          zhCN: '''卡片名称''',
        ),
        LangDicTerm(
          langKey: LangKey.cardNumber,
          enUS: '''card number''',
          zhTW: '''卡片號碼''',
          zhCN: '''卡片号码''',
        ),
        LangDicTerm(
          langKey: LangKey.barcodeNumber,
          enUS: '''barcode number''',
          zhTW: '''條碼號碼''',
          zhCN: '''条码号码''',
        ),
        LangDicTerm(
          langKey: LangKey.barcodeType,
          enUS: '''barcode type''',
          zhTW: '''條碼類型''',
          zhCN: '''条码类型''',
        ),
        LangDicTerm(
          langKey: LangKey.barcodeUnsuppoest,
          enUS: '''barcode unsuppoest''',
          zhTW: '''條碼不支持''',
          zhCN: '''条码不支持''',
        ),
        LangDicTerm(
          langKey: LangKey.notes,
          enUS: '''notes''',
          zhTW: '''備註''',
          zhCN: '''备注''',
        ),
        LangDicTerm(
          langKey: LangKey.edit,
          enUS: '''EDIT''',
          zhTW: '''編輯''',
          zhCN: '''编辑''',
        ),
        LangDicTerm(
          langKey: LangKey.create,
          enUS: '''CREATE''',
          zhTW: '''新增''',
          zhCN: '''新增''',
        ),
        LangDicTerm(
          langKey: LangKey.done,
          enUS: '''DONE''',
          zhTW: '''完成''',
          zhCN: '''完成''',
        ),
        LangDicTerm(
          langKey: LangKey.delete,
          enUS: '''DELETE''',
          zhTW: '''刪除''',
          zhCN: '''删除''',
        ),
        LangDicTerm(
          langKey: LangKey.select,
          enUS: '''Select''',
          zhTW: '''選擇''',
          zhCN: '''选择''',
        ),
        LangDicTerm(
          langKey: LangKey.addOtherCard,
          enUS: '''Add Other Card''',
          zhTW: '''新增其他卡片''',
          zhCN: '''添加其他卡片''',
        ),
        LangDicTerm(
          langKey: LangKey.cardOrderHasChanged,
          enUS: '''Card order has changed''',
          zhTW: '''卡片顺序已改变''',
          zhCN: '''卡片順序已改變''',
        ),
        LangDicTerm(
          langKey: LangKey.unnamed,
          enUS: '''Ｕnnamed''',
          zhTW: '''未命名''',
          zhCN: '''未命名''',
        ),
        LangDicTerm(
          langKey: LangKey.alertDeleteCard,
          enUS: '''Do you want to delete the card?''',
          zhTW: '''您要刪除卡片嗎？''',
          zhCN: '''您要删除卡片吗？''',
        ),
        LangDicTerm(
          langKey: LangKey.yes,
          enUS: '''YES''',
          zhTW: '''是''',
          zhCN: '''是''',
        ),
        LangDicTerm(
          langKey: LangKey.no,
          enUS: '''NO''',
          zhTW: '''否''',
          zhCN: '''否''',
        ),
        LangDicTerm(
          langKey: LangKey.createDone,
          enUS: '''Create done''',
          zhTW: '''新增完成''',
          zhCN: '''新增完成''',
        ),
        LangDicTerm(
          langKey: LangKey.editDone,
          enUS: '''Edit done''',
          zhTW: '''編輯完成''',
          zhCN: '''编辑完成''',
        ),
        LangDicTerm(
          langKey: LangKey.version,
          enUS: '''version''',
          zhTW: '''版本''',
          zhCN: '''版本''',
        ),
        LangDicTerm(
          langKey: LangKey.copyright,
          enUS: '''Copyright''',
          zhTW: '''版權''',
          zhCN: '''版权''',
        ),
        LangDicTerm(
          langKey: LangKey.deveolper,
          enUS: '''Deveolper''',
          zhTW: '''開發人員''',
          zhCN: '''开发人员''',
        ),
        LangDicTerm(
          langKey: LangKey.clear,
          enUS: '''CLEAR''',
          zhTW: '''清除''',
          zhCN: '''清除''',
        ),
        LangDicTerm(
          langKey: LangKey.exportLog,
          enUS: '''export log''',
          zhTW: '''匯出紀錄''',
          zhCN: '''导出日志''',
        ),
        LangDicTerm(
          langKey: LangKey.exportCards,
          enUS: '''export cards''',
          zhTW: '''匯出卡片''',
          zhCN: '''导出卡片''',
        ),
        LangDicTerm(
          langKey: LangKey.supported,
          enUS: '''is supported.''',
          zhTW: '''是支援的''',
          zhCN: '''是支持的''',
        ),
        LangDicTerm(
          langKey: LangKey.notSupported,
          enUS: '''is not supported''',
          zhTW: '''不支援''',
          zhCN: '''不支持''',
        ),
        LangDicTerm(
          langKey: LangKey.appSettings,
          enUS: '''App settings''',
          zhTW: '''應用程式設定''',
          zhCN: '''应用程序设置''',
        ),
        LangDicTerm(
          langKey: LangKey.appSettingContent,
          enUS: '''Use the app settings to control access to:''',
          zhTW: '''使用應用程式設定來控制對以下內容的訪問:''',
          zhCN: '''使用应用程序设置来控制对以下内容的访问:''',
        ),
        LangDicTerm(
          langKey: LangKey.declined,
          enUS: '''declined''',
          zhTW: '''拒絕''',
          zhCN: '''拒绝''',
        ),
        LangDicTerm(
          langKey: LangKey.accepted,
          enUS: '''accepted''',
          zhTW: '''接受''',
          zhCN: '''接受''',
        ),
        LangDicTerm(
          langKey: LangKey.camera,
          enUS: '''Camera''',
          zhTW: '''相機''',
          zhCN: '''相机''',
        ),
        LangDicTerm(
          langKey: LangKey.storage,
          enUS: '''Storage''',
          zhTW: '''儲存空間''',
          zhCN: '''存储''',
        ),
        LangDicTerm(
          langKey: LangKey.phone,
          enUS: '''Phone''',
          zhTW: '''電話''',
          zhCN: '''电话''',
        ),
        LangDicTerm(
          langKey: LangKey.httpLog,
          enUS: '''HTTP LOG''',
          zhTW: '''HTTP 紀錄''',
          zhCN: '''HTTP 日志''',
        ),
        LangDicTerm(
          langKey: LangKey.cardSuggestions,
          enUS: '''Card suggestions''',
          zhTW: '''新增第一張卡片''',
          zhCN: '''添加第一张卡片''',
        ),
        LangDicTerm(
          langKey: LangKey.uNeedToAgreePrivacy,
          enUS: '''You need accept privacy policy then you can use this app''',
          zhTW: '''你必須同意隱私權條款才能使用此APP''',
          zhCN: '''你必须同意隐私权条款才能使用此应用''',
        ),
        LangDicTerm(
          langKey: LangKey.revoke,
          enUS: '''Revoke''',
          zhTW: '''撤消''',
          zhCN: '''撤消''',
        ),
        LangDicTerm(
          langKey: LangKey.revokeWillReset,
          enUS:
              '''If you withdraw our privacy policy, this app will be reset.''',
          zhTW: '''如果您撤回我們的隱私政策，此APP將被重置''',
          zhCN: '''如果您撤回我们的隐私政策，此应用将被重置''',
        ),
        LangDicTerm(
          langKey: LangKey.ok,
          enUS: '''OK''',
          zhTW: '''確認''',
          zhCN: '''确认''',
        ),
        LangDicTerm(
          langKey: LangKey.contactUs,
          enUS: '''Contact us''',
          zhTW: '''聯絡我們''',
          zhCN: '''联系我们''',
        ),
        LangDicTerm(
          langKey: LangKey.search,
          enUS: 'Search',
          zhTW: '搜尋',
          zhCN: '搜寻',
        ),
        LangDicTerm(
          langKey: LangKey.scanStart,
          enUS: '''SCAN START''',
          zhTW: '''掃描開始''',
          zhCN: '''扫描开始''',
        )
      ];
}
