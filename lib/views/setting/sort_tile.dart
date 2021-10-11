import 'package:cardowo/config/lang_key.dart';
import 'package:cardowo/services/i18n_service.dart';
import 'package:flutter/material.dart';

import 'package:cardowo/routes.dart';

class SortTile extends StatelessWidget {
  const SortTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, String> langDict = I18nService.of(context).getDict();
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        child: const Icon(Icons.sort),
      ),
      title: Text(langDict[LangKey.sortCardTitle] ?? ''),
      onTap: () => Navigator.pushNamed(context, AppRoutes.settingSort),
    );
  }
}
