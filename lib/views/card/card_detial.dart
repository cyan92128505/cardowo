// ignore_for_file: no_logic_in_create_state

import 'package:flutter/material.dart';

import 'package:cardowo/services/card_service.dart';
import 'package:cardowo/services/i18n_service.dart';
import 'package:cardowo/views/card/barcode_type_option.dart';
import 'package:cardowo/views/card/barcode_view.dart';
import 'package:cardowo/views/card/image_view.dart';
import 'package:cardowo/views/card/card_image.dart';
import 'package:cardowo/config/card_default.dart';
import 'package:cardowo/models/card.dart';
import 'package:cardowo/routes.dart';

CardService _cardService = CardService();

class CardDetail extends StatefulWidget {
  final CardTerm term;
  const CardDetail(this.term, {Key? key}) : super(key: key);

  @override
  _CardDetailState createState() =>
      _CardDetailState(CardFormInstance.fromCardTerm(term));
}

class _CardDetailState extends State<CardDetail> {
  final CardFormInstance _instance;
  final CardImageGenerator _front = CardImageGenerator();
  final CardImageGenerator _reverse = CardImageGenerator();

  _CardDetailState(this._instance);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Map<String, String> langDict = I18nService.of(context).getDict();
    return Scaffold(
      appBar: AppBar(
        title: Text(_instance.cardName ?? langDict[LangKey.unnamed]!),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.edit,
            ),
            onPressed: () async {
              await _cardService.setupById(id: _instance.id);
              Navigator.of(context)
                  .pushNamed(AppRoutes.cardDetailEdit)
                  .then((_) async {
                await _cardService.setupById(id: _instance.id);

                setState(() {
                  _instance.apply(_cardService.target.toCardTerm());
                });
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _front.build(
                  imageWidget: CardImageGenerator.setImage(
                    _instance.frontSide ?? EMPTY_CARD_FRONT_PATH,
                  ),
                  needCamera: false,
                  onTap: () => _openImageDialog(
                    _instance.frontSide ?? EMPTY_CARD_FRONT_PATH,
                  ),
                  context: context,
                ),
                _reverse.build(
                  imageWidget: CardImageGenerator.setImage(
                    _instance.reverseSide ?? EMPTY_CARD_BACK_PATH,
                  ),
                  needCamera: false,
                  onTap: () => _openImageDialog(
                    _instance.reverseSide ?? EMPTY_CARD_BACK_PATH,
                  ),
                  context: context,
                ),
              ],
            ),
            Card(
              child: BarcodeTypeOption(
                type: _instance.barcodeType ??
                    barcodeTypeName[BarcodeType.QR_CODE],
                codeValue: _instance.barcodeNumber ??
                    defaultBarcodeValue[
                        barcodeType[barcodeTypeName[BarcodeType.QR_CODE]]],
                onPressed: _openBarcodeDialog,
              ),
            ),
            _infoRow(
                title: langDict[LangKey.cardNumber]!,
                content: _instance.cardNumber ?? ''),
            _infoRow(
                title: langDict[LangKey.notes]!,
                content: _instance.notes ?? ''),
          ],
        ),
      ),
    );
  }

  Widget _infoRow({String title = '', String content = ''}) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  width: double.infinity,
                  child: Text(
                    content,
                    softWrap: true,
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyText1?.color),
                  ),
                ),
              ),
            ],
          ),
          onTap: () => {},
        ),
      ),
    );
  }

  void _openBarcodeDialog() => Navigator.of(context)
      .push(DialogTransitionRoute(page: BarcodeView(instance: _instance)))
      .then((_) => setState(() {}));

  void _openImageDialog(String path) => Navigator.of(context)
      .push(DialogTransitionRoute(page: ImageView(path: path)))
      .then((_) => setState(() {}));
}
