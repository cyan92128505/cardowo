// ignore_for_file: no_logic_in_create_state

import 'package:cardowo/services/i18n_service.dart';
import 'package:flutter/material.dart';

class HelpContentPage extends StatefulWidget {
  final String title;
  final String content;
  const HelpContentPage(this.title, this.content, {Key? key}) : super(key: key);
  @override
  _HelpContentPageState createState() => _HelpContentPageState(title, content);
}

class _HelpContentPageState extends State<HelpContentPage> {
  final String title;
  final String content;
  _HelpContentPageState(this.title, this.content);
  @override
  Widget build(BuildContext context) {
    Map<String, String> langDict = I18nService.of(context).getDict();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(langDict[title]!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          langDict[content]!,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

List<String> title = [];
