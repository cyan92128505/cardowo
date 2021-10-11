// ignore_for_file: constant_identifier_names

import 'dart:io';
import 'dart:typed_data';
import 'dart:async';

import 'package:edit_distance/edit_distance.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:platform/platform.dart';

import 'package:cardowo/config/card_default.dart';
export 'package:cardowo/config/card_default.dart';
import 'package:cardowo/models/card.dart';

Platform _platform = const LocalPlatform();

const int CARD_WIDTH = 558;
const int CARD_HEIGHT = 302;

class CardService {
  late String _imageFolderPath;
  late CardFormInstance target;

  static final CardService _instance = CardService._();

  factory CardService() {
    return _instance;
  }

  CardService._() {
    clean();
    setupImageFolderPath();
  }

  static CardInfo getCardInfoById(String id) {
    return CardDefault.list.firstWhere((o) => o.id == id);
  }

  static Future<File?> cropImage({
    required File imageFile,
    bool? cardFrontSide,
  }) async {
    File? croppedFile = await ImageCropper.cropImage(
      sourcePath: imageFile.path,
      aspectRatio: const CropAspectRatio(
        ratioX: CARD_WIDTH / CARD_HEIGHT,
        ratioY: 1.0,
      ),
      maxWidth: CARD_WIDTH,
      maxHeight: CARD_HEIGHT,
    );

    return croppedFile;
  }

  static List<CardInfo> prepareCardList(
    BuildContext context, {
    String? search,
  }) {
    var detector = Levenshtein();

    List<CardInfo> _list = [];

    Locale appLocale = Localizations.localeOf(context);
    _list.addAll(CardDefault.list);

    _list = _list.fold(
      <CardInfo>[],
      (list, term) {
        if (term.regions.join(',').contains(
              (appLocale.countryCode != 'TW' && appLocale.countryCode != 'CN')
                  ? 'CN'
                  : appLocale.countryCode!,
            )) {
          list.add(term);
        }
        return list;
      },
    );

    _list = _list.fold(
      <CardInfo>[],
      (_l, _t) {
        if (_l.map((l) => l.name).contains(_t.name) == false) {
          _l.add(_t);
        }
        return _l;
      },
    );

    _list.sort((a, b) => a.name.compareTo(b.name));

    if (search != null) {
      String _search = search.toUpperCase();
      _list.sort((a, b) => detector
          .normalizedDistance(a.name, _search)
          .compareTo(detector.normalizedDistance(b.name, _search)));
    }

    return _list;
  }

  List<String> getAllBarcodeType() {
    List<String> _list =
        CardDefault.list.map<String>((term) => term.barcodeFormat).fold(
      [],
      (list, term) {
        if (list.contains(term) == false) {
          list.add(term);
        }
        return list;
      },
    );
    _list.sort();
    return _list;
  }

  void setupToCreate({String? cardInfoId}) {
    if (cardInfoId == null) {
      clean();
      return;
    }
    CardInfo _cardInfo = getCardInfoById(cardInfoId);
    target = CardFormInstance(
      cardName: _cardInfo.name,
      frontSide: _cardInfo.logo,
      cardTypeId: _cardInfo.id,
      barcodeType: _cardInfo.barcodeFormat,
      createDatetime: '${DateTime.now()}',
    );
  }

  Future<void> setupById({int? id}) async {
    CardSqlite _db = CardSqlite();
    await _db.openSqlite();
    CardTerm _term = await _db.queryById(termId: id!);
    await _db.close();
    if (_term.id == null) {
      clean();
      return;
    }

    target = CardFormInstance.fromCardTerm(_term);
  }

  void clean() {
    target = CardFormInstance();
  }

  Future<void> insert() async {
    await setupFrontImage();
    await setupReverseImage();

    CardSqlite _db = CardSqlite();
    await _db.openSqlite();
    var cardList = await _db.queryAll();

    CardTerm _term = target.toCardTerm();
    _term.sort = cardList.length + 1;
    _term.barcodeType = _term.barcodeType ?? 'QR_CODE';
    _term.createDatetime = _term.createDatetime ?? '${DateTime.now()}';
    _term.cardTypeId =
        _term.cardTypeId ?? '0000000000000000000000000000000000000000';

    await _db.insert(_term);

    await _db.close();
  }

  Future<void> update(CardFormInstance _target) async {
    await setupFrontImage();
    await setupReverseImage();

    CardSqlite _db = CardSqlite();
    await _db.openSqlite();
    CardTerm _term = _target.toCardTerm();

    await _db.update(_term);

    await _db.close();
  }

  Future<void> delete(int id) async {
    CardSqlite _db = CardSqlite();
    await _db.openSqlite();
    await _db.delete(id);
    var cardList = await _db.queryAll();

    cardList.sort((a, b) => a.sort!.compareTo(b.sort!));

    for (var i = 0; i < cardList.length; i++) {
      cardList[i].sort = i + 1;
      await _db.update(cardList[i]);
    }

    await _db.close();
  }

  Future<void> deleteAll() async {
    CardSqlite _db = CardSqlite();
    await _db.openSqlite();
    await _db.deleteAll();
    await _db.close();
  }

  Future<void> updateAll(List<CardTerm> _cardList) async {
    CardSqlite _db = CardSqlite();
    await _db.openSqlite();

    for (var i = 0; i < _cardList.length; i++) {
      await _db.update(_cardList[i]);
    }

    await _db.close();
  }

  Future<List<CardTerm>> queryAll() async {
    CardSqlite _db = CardSqlite();

    List<CardTerm> _cardTermList = [];
    await _db.openSqlite();
    _cardTermList = await _db.queryAll();
    _cardTermList.sort((a, b) => a.sort!.compareTo(b.sort!));
    await _db.close();
    return _cardTermList;
  }

  setupFrontImage() async {
    if (target.frontImage != null) {
      target.frontSide = await _setupImage(target.frontImage);
    }
  }

  setupReverseImage() async {
    if (target.reverseImage != null) {
      target.reverseSide = await _setupImage(target.reverseImage);
    }
  }

  Future<String> _setupImage(
    Uint8List? rawBytes,
  ) async {
    if (rawBytes == null) {
      return '';
    }

    if (_platform.isAndroid == true) {
      var _directory =
          Directory('${(await getExternalStorageDirectory())?.path}/cardowo/');
      if ((await _directory.exists()) == false) {
        await _directory.create(recursive: true);
      }
    }

    String _seed = '${target.cardTypeId}-${DateTime.now()}';
    final String fileName = _seed;

    File imageFile = await getImageFileFromUint8List(_seed, rawBytes);

    String _imageFileName = '$fileName.png';

    String _imageFilepath = '${(getImageFolderPath())}/$_imageFileName';

    await imageFile.create(recursive: true);
    await imageFile.copy(_imageFilepath);

    return _imageFileName;
  }

  Future<File> getImageFileFromUint8List(
    String path,
    Uint8List rawBytes,
  ) async {
    final String fileName = path;
    final file =
        File('${(await getTemporaryDirectory()).path}/Image/$fileName.png');
    await file.create(recursive: true);
    await file.writeAsBytes(rawBytes);

    return file;
  }

  void setupImageFolderPath() async {
    _imageFolderPath = _platform.isIOS == true
        ? '${(await getApplicationDocumentsDirectory()).path}/'
        : '${(await getExternalStorageDirectory())?.path}/cardowo/';
  }

  String getImageFolderPath() => _imageFolderPath;
}

class CardFormInstance {
  late int? id;
  late String? frontSide;
  late String? reverseSide;
  late String? cardName;
  late String? cardNumber;
  late String? cardTypeId;
  late String? barcodeNumber;
  late String? barcodeType;
  late String? notes;
  late String? createDatetime;
  late int? sort;

  late Uint8List? frontImage;
  late Uint8List? reverseImage;

  CardFormInstance({
    this.id,
    this.frontSide,
    this.reverseSide,
    this.cardName,
    this.cardNumber,
    this.cardTypeId,
    this.barcodeNumber,
    this.barcodeType,
    this.notes,
    this.createDatetime,
    this.sort,
    this.frontImage,
    this.reverseImage,
  });

  CardFormInstance.fromCardTerm(CardTerm term) : super() {
    id = term.id;
    frontSide = term.frontSide;
    reverseSide = term.reverseSide;
    cardName = term.cardName;
    cardNumber = term.cardNumber;
    cardTypeId = term.cardTypeId;
    barcodeNumber = term.barcodeNumber;
    barcodeType = term.barcodeType;
    notes = term.notes;
    createDatetime = term.createDatetime;
    sort = term.sort;
  }

  CardTerm toCardTerm() {
    return CardTerm(
      id: id,
      frontSide: frontSide,
      reverseSide: reverseSide,
      cardName: cardName,
      cardNumber: cardNumber,
      cardTypeId: cardTypeId,
      createDatetime: createDatetime,
      barcodeNumber: barcodeNumber,
      barcodeType: barcodeType,
      notes: notes,
      sort: sort,
    );
  }

  void apply(CardTerm term) {
    id = term.id;
    frontSide = term.frontSide;
    reverseSide = term.reverseSide;
    cardName = term.cardName;
    cardNumber = term.cardNumber;
    cardTypeId = term.cardTypeId;
    barcodeNumber = term.barcodeNumber;
    barcodeType = term.barcodeType;
    notes = term.notes;
    createDatetime = term.createDatetime;
    sort = term.sort;
  }

  @override
  String toString() => '''{
      id: '$id',
      frontSide: '$frontSide',
      reverseSide: '$reverseSide',
      cardName: '$cardName',
      cardNumber: '$cardNumber',
      cardTypeId: '$cardTypeId',
      barcodeNumber: '$barcodeNumber',
      barcodeType: '$barcodeType',
      notes: '$notes',
      createDatetime: '$createDatetime',
      sort: '$sort',
      frontImage: '$frontImage',
      reverseImage: '$reverseImage',
    }''';
}
