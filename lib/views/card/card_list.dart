import 'package:flutter/material.dart';

import 'package:cardowo/config/card_default.dart';
import 'package:cardowo/services/card_service.dart';
import 'package:cardowo/services/i18n_service.dart';
import 'package:cardowo/routes.dart';

class CardList extends StatefulWidget {
  const CardList({Key? key}) : super(key: key);

  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  List<CardInfo> _list = <CardInfo>[];
  final TextEditingController _searchController = TextEditingController();
  String _queryName = '';

  @override
  void initState() {
    _list.addAll(CardDefault.list);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _list = CardService.prepareCardList(context, search: _queryName);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(I18nService.of(context).getText(LangKey.select)),
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      children: <Widget>[
        _searchForm(),
        SizedBox(
          child: Container(),
          height: 8.0,
        ),
        _widgetAddOther(),
        const Divider(),
        Expanded(
          child: _widgetCardList(),
        ),
      ],
    );
  }

  Widget _searchForm() {
    FocusNode _focusNode = FocusNode();
    return TextField(
      onSubmitted: (value) {
        setState(() {
          _queryName = value;
        });
      },
      focusNode: _focusNode,
      controller: _searchController,
      decoration: InputDecoration(
        labelText: I18nService.of(context).getText(LangKey.search),
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget _widgetAddOther() {
    return ListTile(
      leading: Card(
        color: Theme.of(context).primaryColor,
        semanticContainer: true,
        clipBehavior: Clip.antiAlias,
        child: Image.asset(
          EMPTY_CARD_FRONT_PATH,
          fit: BoxFit.fill,
        ),
        elevation: 5,
        margin: const EdgeInsets.all(4),
      ),
      title: Text(I18nService.of(context).getText(LangKey.addOtherCard)),
      onTap: () {
        CardService().clean();
        Navigator.of(context).pushNamed(AppRoutes.cardDetailCreate);
      },
    );
  }

  Widget _widgetCardList() {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(),
      itemCount: _list.length,
      itemBuilder: (context, index) => ListTile(
        leading: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAlias,
          child: Image.asset(
            _list[index].logo,
            fit: BoxFit.fill,
          ),
          elevation: 5,
          margin: const EdgeInsets.all(4),
        ),
        title: Text(_list[index].name),
        onTap: () {
          CardService().setupToCreate(cardInfoId: _list[index].id);
          Navigator.of(context).pushNamed(AppRoutes.cardDetailCreate);
        },
      ),
    );
  }
}
