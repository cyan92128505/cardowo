import 'package:cardowo/config/lang_key.dart';
import 'package:cardowo/services/i18n_service.dart';
import 'package:cardowo/views/setting/help_content_page.dart';
import 'package:cardowo/routes.dart';
import 'package:flutter/material.dart';

class HelpTile extends StatelessWidget {
  const HelpTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, String> langDict = I18nService.of(context).getDict();

    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        child: const Icon(Icons.help),
      ),
      title: Text(langDict[LangKey.helpTitle]!),
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.settingHelp);
      },
    );
  }
}

class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  List<String> title = [
    LangKey.helpAddTitle,
    LangKey.helpEditTitle,
    LangKey.helpDeleteTitle,
    LangKey.helpCodeNotSupportTitle,
    LangKey.helpOnlineTitle
  ];

  List<String> content = [
    LangKey.helpAddContent,
    LangKey.helpEditContent,
    LangKey.helpDeleteContent,
    LangKey.helpCodeNotSupportContent,
    LangKey.helpOnlineContent
  ];

  @override
  Widget build(BuildContext context) {
    Map<String, String> langDict = I18nService.of(context).getDict();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(langDict[LangKey.helpTitle]!),
      ),
      body: _helpList(),
    );
  }

  Widget _helpList() {
    Map<String, String> langDict = I18nService.of(context).getDict();

    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(),
      itemCount: title.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(langDict[title[index]]!),
        onTap: () {
          Navigator.of(context).push(
            DialogTransitionRoute(
              page: HelpContentPage(title[index], content[index]),
            ),
          );
        },
      ),
    );
  }
}
