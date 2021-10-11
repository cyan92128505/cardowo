// ignore_for_file: unnecessary_null_comparison

import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:cardowo/resources/cardowo_icon.dart';
import 'package:cardowo/config/card_default.dart';
import 'package:cardowo/config/lang_key.dart';
import 'package:cardowo/models/card.dart';
import 'package:cardowo/services/card_service.dart';
import 'package:cardowo/services/i18n_service.dart';
import 'package:cardowo/services/scan_service.dart';
import 'package:cardowo/views/card/card_detial.dart';
import 'package:cardowo/views/card/card_image.dart';
import 'package:cardowo/routes.dart';

class CardHomePage extends StatefulWidget {
  const CardHomePage({Key? key}) : super(key: key);

  @override
  _CardHomePageState createState() => _CardHomePageState();
}

class _CardHomePageState extends State<CardHomePage> {
  final CardSqlite _db = CardSqlite();
  late List<CardTerm> usercards;
  late Map<String, String> _i18nData;

  @override
  void initState() {
    CardService().clean();
    // HttpService().track();
    super.initState();
  }

  @override
  void dispose() {
    _db.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _i18nData = I18nService.of(context).getDict();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(_i18nData[LangKey.card]!),
        leading: IconButton(
          icon: Stack(
            children: const <Widget>[
              Icon(
                Icons.remove,
              ),
              Icon(
                Icons.crop_free,
              )
            ],
          ),
          onPressed: () {
            ScanService().pureScan().then((_barcodeResult) async {
              showToast(
                '${_i18nData[LangKey.barcodeType]} ${_barcodeResult.type} ${_barcodeResult.type == ResultType.Barcode ? _i18nData[LangKey.supported] : _i18nData[LangKey.notSupported]}!',
              );
            });
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.sort),
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.settingSort);
            },
          )
        ],
      ),
      body: FutureBuilder(
        future: _checkCard(),
        builder: (context, asyncSnapshot) {
          if (asyncSnapshot.connectionState == ConnectionState.done) {
            return asyncSnapshot.data as Widget;
          }
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add',
        child: const Icon(Icons.add),
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          Navigator.of(context).pushNamed(AppRoutes.cardList);
        },
      ),
    );
  }

  Future<Widget> _checkCard() async {
    await _db.openSqlite();
    usercards = await _db.queryAll();
    usercards.sort((a, b) => a.sort!.compareTo(b.sort!));
    await _db.close();

    SharedPreferences prefs = await SharedPreferences.getInstance();

    bool charon = prefs.getBool('charon') == true;

    Widget body = (usercards.isEmpty) ? _defaultBody() : _ownerBody();

    return charon ? _withAuth(body) : body;
  }

  Widget _withAuth(Widget body) {
    return Column(
      children: <Widget>[
        TextButton(
          child: SizedBox(
            child: Center(
              child: Text(
                _i18nData[LangKey.deviceAuth]!,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 23,
                  color: Colors.orangeAccent,
                ),
              ),
            ),
            width: double.infinity,
            height: 64,
          ),
          onPressed: () =>
              ScanService().scan().then((_) => showFinishMessage(_)),
        ),
        Expanded(
          child: body,
        ),
      ],
    );
  }

  Widget _ownerBody() {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      itemCount: usercards.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.65,
      ),
      itemBuilder: (BuildContext context, int index) => Flex(
        direction: Axis.vertical,
        children: <Widget>[
          CardImageGenerator().build(
            context: context,
            imageWidget: CardImageGenerator.setImage(
              usercards[index].frontSide!,
            ),
            needCamera: false,
            onLongPress: () {
              Navigator.pushNamed(context, AppRoutes.settingSort);
            },
            onTap: () => Navigator.of(context).push(
              DialogTransitionRoute(
                page: CardDetail(usercards[index]),
              ),
            ),
          ),
          Text(usercards[index].cardName ??
              I18nService.of(context).getText(LangKey.unnamed)),
        ],
      ),
    );
  }

  Widget _defaultBody() {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    I18nService.of(context).getText(LangKey.cardSuggestions),
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30, bottom: 20),
                    child: SizedBox(
                      height: _girdHeightCount(),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: _suggestCardGrid(),
                      ),
                    ),
                  ),
                  TextButton(
                    child: Text(
                      I18nService.of(context).getText(LangKey.addOtherCard),
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    onPressed: () =>
                        Navigator.of(context).pushNamed(AppRoutes.cardList),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  double _girdHeightCount() {
    return MediaQuery.of(context).size.width / 1.65;
  }

  Widget _suggestCardGrid() {
    List<CardInfo> suggest = CardService.prepareCardList(context);
    suggest.shuffle();
    suggest = suggest.sublist(0, 9);

    return GridView.builder(
      itemCount: 9,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 1.65,
      ),
      itemBuilder: (
        BuildContext context,
        int index,
      ) =>
          GestureDetector(
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAlias,
          child: Image.asset(
            suggest[index].logo,
            fit: BoxFit.fill,
          ),
          elevation: 5,
          margin: const EdgeInsets.all(4),
        ),
        onTap: () {
          CardService().setupToCreate(cardInfoId: suggest[index].id);
          Navigator.of(context).pushNamed(AppRoutes.cardDetailCreate);
        },
      ),
    );
  }

  showFinishMessage(String responeString) {
    showToast(
        '${_i18nData[LangKey.scanText]}${_i18nData[LangKey.successText]}!');
  }
}
