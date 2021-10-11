import 'package:flutter/material.dart';
import 'package:direct_select_flutter/direct_select_item.dart';
import 'package:direct_select_flutter/direct_select_list.dart';

import 'package:cardowo/services/i18n_service.dart';

class LanguageTile extends StatefulWidget {
  const LanguageTile({Key? key}) : super(key: key);

  @override
  _LanguageTileState createState() => _LanguageTileState();
}

class _LanguageTileState extends State<LanguageTile> {
  String? dropdownValue;

  @override
  void initState() {
    dropdownValue = langOption[I18nDelegate().getLangCode()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        child: const Icon(Icons.translate),
      ),
      title: Stack(
        children: <Widget>[
          Positioned(
            right: 0,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(
                Icons.import_export,
                color: Theme.of(context).bottomAppBarColor,
              ),
            ),
          ),
          DirectSelectList<String>(
              values: langOption.values.toList(),
              defaultItemIndex: I18nDelegate().getLangCode().index,
              itemBuilder: (String value) => getDropDownMenuItem(value),
              focusedItemDecoration: _getDslDecoration(),
              onItemSelectedListener: (item, index, context) {
                dropdownValue = item;
                I18nDelegate().setupLocale(
                  context,
                  langOption.map((k, v) => MapEntry(v, k))[item]!,
                );
              }),
        ],
      ),
    );
  }

  DirectSelectItem<String> getDropDownMenuItem(String value) =>
      DirectSelectItem<String>(
        value: value,
        itemBuilder: (context, value) => Text(value),
      );

  _getDslDecoration() => BoxDecoration(
        border: BorderDirectional(
          bottom: BorderSide(width: 1, color: Theme.of(context).primaryColor),
          top: BorderSide(width: 1, color: Theme.of(context).primaryColor),
        ),
      );
}
