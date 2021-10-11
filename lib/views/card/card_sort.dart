import 'dart:math';

import 'package:flutter/material.dart';
import 'package:reorderables/reorderables.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:cardowo/models/card.dart';
import 'package:cardowo/resources/charon_icon.dart';
import 'package:cardowo/services/card_service.dart';
import 'package:cardowo/services/i18n_service.dart';
import 'package:cardowo/views/card/card_image.dart';
import 'package:cardowo/routes.dart';

class CardSort extends StatefulWidget {
  const CardSort({Key? key}) : super(key: key);

  @override
  _CardSortState createState() => _CardSortState();
}

class _CardSortState extends State<CardSort> {
  final CardSqlite _db = CardSqlite();

  List<CardTerm> _cardTermList = [];
  List<Widget> _cardList = [];

  @override
  void initState() {
    _getList().then((_) {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _db.close();
    super.dispose();
  }

  Future<void> _getList() async {
    _cardTermList = await CardService().queryAll();
    _generateCardList();
    return;
  }

  void _onReorder(int oldIndex, int newIndex) {
    CardTerm row = _cardTermList.removeAt(oldIndex);
    _cardTermList.insert(newIndex, row);
    for (var i = 0; i < _cardTermList.length; i++) {
      _cardTermList[i].sort = i + 1;
    }
    _generateCardList();
    setState(() {});
  }

  void _generateCardList() {
    Size _size = MediaQuery.of(context).size;
    double _cardWidth = (min(_size.width, _size.height) / 2) * 0.8;
    double _cardHeight = _cardWidth * CARD_HEIGHT / CARD_WIDTH;

    _cardList = _cardTermList
        .map(
          (u) => Card(
            elevation: 4,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: SizedBox(
                width: _cardWidth,
                height: _cardHeight,
                child: CardImageGenerator.setImage(
                  u.frontSide!,
                ),
              ),
            ),
          ),
        )
        .toList();
  }

  void _doneReorder() async {
    await CardService().updateAll(_cardTermList);

    showToast(I18nService.of(context).getText(LangKey.cardOrderHasChanged));

    Navigator.of(context).pushNamedAndRemoveUntil(AppRoutes.home, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    double edge = (min(_size.width, _size.height) / 32);
    List<Widget> _actions = [];
    if (_cardList.isNotEmpty) {
      _actions.add(
        MaterialButton(
          child: Text(
            I18nService.of(context).getText(LangKey.done),
            style: TextStyle(color: Theme.of(context).bottomAppBarColor),
          ),
          onPressed: () {
            _doneReorder();
          },
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(I18nService.of(context).getText(LangKey.sortCardTitle)),
        centerTitle: true,
        actions: _actions,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            Positioned(
              child: SvgPicture.string(
                CharonIcon.lightMode,
                color: Theme.of(context).primaryColor.withOpacity(0.2),
              ),
              bottom: 64,
              right: -32,
            ),
            SingleChildScrollView(
              child: Center(
                child: ReorderableWrap(
                  padding: EdgeInsets.all(edge),
                  spacing: 2.0,
                  runSpacing: 2.0,
                  children: _cardList,
                  onReorder: _onReorder,
                  onNoReorder: (_) {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
