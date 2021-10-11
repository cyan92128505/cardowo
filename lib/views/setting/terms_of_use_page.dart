import 'package:cardowo/config/lang_key.dart';
import 'package:cardowo/services/card_service.dart';
import 'package:cardowo/services/i18n_service.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:cardowo/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TermsOfUseTile extends StatelessWidget {
  const TermsOfUseTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, String> langDict = I18nService.of(context).getDict();
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        child: const Icon(Icons.notification_important),
      ),
      title: Text(langDict[LangKey.termsOfUseTitle] ?? ''),
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.settingTermsOfUse);
      },
    );
  }
}

class TermsOfUsePage extends StatefulWidget {
  const TermsOfUsePage({Key? key}) : super(key: key);

  @override
  _TermsOfUsePageState createState() => _TermsOfUsePageState();
}

class _TermsOfUsePageState extends State<TermsOfUsePage> {
  bool userThisTimeChecked = false;
  bool systemKeepChecked = false;

  @override
  void initState() {
    firstcheckTerms().then((_) {
      setState(() {
        userThisTimeChecked = systemKeepChecked;
      });
    });
    super.initState();
  }

  Future firstcheckTerms() async {
    systemKeepChecked = await termAgreeStatus();
  }

  @override
  Widget build(BuildContext context) {
    Map<String, String> langDict = I18nService.of(context).getDict();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(langDict[LangKey.termsOfUseTitle] ?? ''),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    Map<String, String> langDict = I18nService.of(context).getDict();
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Text(langDict[LangKey.termsContent] ?? ''),
          Container(
            margin: const EdgeInsets.only(top: 30),
          ),
          FutureBuilder<Widget>(
            future: policy(),
            builder: (context, asyncSnapshot) {
              if (asyncSnapshot.connectionState == ConnectionState.done) {
                return asyncSnapshot.data!;
              }
              return Container();
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 50),
            child: TextButton(
              child: Text(langDict[LangKey.ok] ?? ''),
              onPressed: () async {
                _checkboxEvent(langDict);
              },
            ),
          ),
        ],
      ),
    );
  }

  Future _checkboxEvent(Map<String, String> langDict) async {
    if (systemKeepChecked && !userThisTimeChecked) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(langDict[LangKey.termsOfUseTitle] ?? ''),
              content: Text(langDict[LangKey.revokeWillReset] ?? ''),
              actions: <Widget>[
                ElevatedButton(
                  child: Text(langDict[LangKey.cancelText] ?? ''),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                ElevatedButton(
                  child: Text(langDict[LangKey.revoke] ?? ''),
                  onPressed: () async {
                    setTermAgreeStatus(false);
                    await CardService().deleteAll();
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        AppRoutes.splash, (_) => false);
                  },
                ),
              ],
            );
          });
    } else if (!systemKeepChecked && userThisTimeChecked) {
      setTermAgreeStatus(true);
      Navigator.of(context).pushReplacementNamed(AppRoutes.home);
    } else if (!systemKeepChecked && !userThisTimeChecked) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(langDict[LangKey.termsOfUseTitle] ?? ''),
              content: Text(langDict[LangKey.uNeedToAgreePrivacy] ?? ''),
              actions: <Widget>[
                TextButton(
                  child: Text(langDict[LangKey.ok] ?? ''),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          });
    } else {
      Navigator.of(context).pop();
    }
  }

  Future<Widget> policy() async {
    Map<String, String> langDict = I18nService.of(context).getDict();
    return Row(
      children: <Widget>[
        Checkbox(
          activeColor: Theme.of(context).primaryColor,
          value: userThisTimeChecked,
          onChanged: (bool? value) {
            userThisTimeChecked = userThisTimeChecked == false;
            setState(() {});
          },
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: langDict[LangKey.youMustAgree],
              style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1?.color),
              children: <TextSpan>[
                TextSpan(
                  text: langDict[LangKey.privacyPloicy],
                  style: TextStyle(color: Theme.of(context).primaryColor),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () =>
                        Navigator.pushNamed(context, AppRoutes.settingPolicy),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<bool> termAgreeStatus() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('charon_terms_agree') == true;
  }

  void setTermAgreeStatus(bool checked) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('charon_terms_agree', checked);
  }
}
