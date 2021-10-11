// ignore_for_file: constant_identifier_names

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:barcode_widgets/barcode_flutter.dart';

const int dbVersion = 1;

const String tableName = 'card';

enum ColumnType {
  ID,
  FRONT_SIDE,
  REVERSE_SIDE,
  CARD_NAME,
  CARD_NUMBER,
  CARD_TYPE_ID,
  BARCODE_NUMBER,
  BARCODE_TYPE,
  NOTES,
  CREATE_DATETIME,
  SORT,
}

enum BarcodeType {
  CODE_128,
  CODE_39,
  EAN_13,
  EAN_8,
  QR_CODE,
  UPC_A,
}

const Map<BarcodeType, String> barcodeTypeName = {
  BarcodeType.CODE_39: 'CODE_39',
  BarcodeType.CODE_128: 'CODE_128',
  BarcodeType.EAN_8: 'EAN_8',
  BarcodeType.EAN_13: 'EAN_13',
  BarcodeType.QR_CODE: 'QR_CODE',
  BarcodeType.UPC_A: 'UPC_A',
};

const Map<String, BarCodeType> barcodeType = {
  'CODE_39': BarCodeType.Code39,
  'CODE_128': BarCodeType.Code128,
  'EAN_8': BarCodeType.CodeEAN8,
  'EAN_13': BarCodeType.CodeEAN13,
  'UPC_A': BarCodeType.CodeUPCA,
};

const Map<BarCodeType, String> defaultBarcodeValue = {
  BarCodeType.Code39: '00000000',
  BarCodeType.Code128: '00000000',
  BarCodeType.CodeEAN8: '00000000',
  BarCodeType.CodeEAN13: '0000000000000',
  BarCodeType.CodeUPCA: '000000000000',
};

class CardTerm {
  int? id;
  String? frontSide;
  String? reverseSide;
  String? cardName;
  String? cardNumber;
  String? cardTypeId;
  String? barcodeNumber;
  String? barcodeType;
  String? notes;
  String? createDatetime;
  int? sort;

  static final Map<ColumnType, String> column = {
    ColumnType.ID: '_id',
    ColumnType.FRONT_SIDE: 'front_side',
    ColumnType.REVERSE_SIDE: 'reverse_side',
    ColumnType.CARD_NAME: 'card_name',
    ColumnType.CARD_NUMBER: 'card_number',
    ColumnType.CARD_TYPE_ID: 'card_type_id',
    ColumnType.BARCODE_NUMBER: 'barcode_number',
    ColumnType.BARCODE_TYPE: 'barcode_type',
    ColumnType.NOTES: 'notes',
    ColumnType.CREATE_DATETIME: 'create_datetime',
    ColumnType.SORT: 'sort',
  };

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      column[ColumnType.ID]!: id,
      column[ColumnType.FRONT_SIDE]!: frontSide,
      column[ColumnType.REVERSE_SIDE]!: reverseSide,
      column[ColumnType.CARD_NAME]!: cardName,
      column[ColumnType.CARD_NUMBER]!: cardNumber,
      column[ColumnType.CARD_TYPE_ID]!: cardTypeId,
      column[ColumnType.BARCODE_NUMBER]!: barcodeNumber,
      column[ColumnType.BARCODE_TYPE]!: barcodeType,
      column[ColumnType.NOTES]!: notes,
      column[ColumnType.CREATE_DATETIME]!: createDatetime,
      column[ColumnType.SORT]!: sort,
    };

    if (id != null) {
      map[column[ColumnType.ID]!] = id;
    }

    return map;
  }

  CardTerm({
    this.id,
    this.frontSide,
    this.reverseSide,
    this.cardName,
    this.cardNumber,
    this.cardTypeId = 'null',
    this.barcodeNumber,
    this.barcodeType,
    this.notes,
    this.createDatetime,
    this.sort,
  });

  CardTerm.fromMap(Map<String, dynamic> map) {
    id = map[column[ColumnType.ID]];
    frontSide = map[column[ColumnType.FRONT_SIDE]];
    reverseSide = map[column[ColumnType.REVERSE_SIDE]];
    cardName = map[column[ColumnType.CARD_NAME]];
    cardNumber = map[column[ColumnType.CARD_NUMBER]];
    cardTypeId = map[column[ColumnType.CARD_TYPE_ID]];
    barcodeNumber = map[column[ColumnType.BARCODE_NUMBER]];
    barcodeType = map[column[ColumnType.BARCODE_TYPE]];
    notes = map[column[ColumnType.NOTES]];
    createDatetime = map[column[ColumnType.CREATE_DATETIME]];
    sort = map[column[ColumnType.SORT]];
  }
}

class CardSqlite {
  Database? db;

  openSqlite() async {
    String databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'charon_card.db');

    db = await openDatabase(
      path,
      version: dbVersion,
      onCreate: (
        Database db,
        int version,
      ) async {
        await db.execute('''
          CREATE TABLE $tableName (
            ${CardTerm.column[ColumnType.ID]} INTEGER PRIMARY KEY AUTOINCREMENT, 
            ${CardTerm.column[ColumnType.FRONT_SIDE]} TEXT, 
            ${CardTerm.column[ColumnType.REVERSE_SIDE]} TEXT, 
            ${CardTerm.column[ColumnType.CARD_NAME]} TEXT,
            ${CardTerm.column[ColumnType.CARD_NUMBER]} TEXT, 
            ${CardTerm.column[ColumnType.CARD_TYPE_ID]} TEXT, 
            ${CardTerm.column[ColumnType.BARCODE_NUMBER]} TEXT, 
            ${CardTerm.column[ColumnType.BARCODE_TYPE]} INTEGER,
            ${CardTerm.column[ColumnType.NOTES]} TEXT,
            ${CardTerm.column[ColumnType.CREATE_DATETIME]} TEXT,
            ${CardTerm.column[ColumnType.SORT]} INTEGER )
          ''');
      },
    );
  }

  Future<CardTerm> insert(CardTerm _term) async {
    _term.id = await db!.insert(tableName, _term.toMap());
    return _term;
  }

  Future<CardTerm> update(CardTerm _term) async {
    await db!.update(
      tableName,
      _term.toMap(),
      where: '${CardTerm.column[ColumnType.ID]} = ?',
      whereArgs: [_term.id],
    );
    return _term;
  }

  Future<CardTerm> queryById({int? termId}) async {
    List<Map<String, dynamic>> maps = [];

    try {
      maps = await db!.query(
        tableName,
        where: '${CardTerm.column[ColumnType.ID]} = ?',
        whereArgs: [termId],
      );
    } catch (e) {
      // print(e);
    }

    return maps.isNotEmpty ? CardTerm.fromMap(maps.first) : CardTerm();
  }

  Future<List<CardTerm>> queryAll() async {
    List<Map<String, dynamic>> maps = [];
    try {
      maps = await db!.query(tableName, columns: [
        CardTerm.column[ColumnType.ID]!,
        CardTerm.column[ColumnType.FRONT_SIDE]!,
        CardTerm.column[ColumnType.REVERSE_SIDE]!,
        CardTerm.column[ColumnType.CARD_NAME]!,
        CardTerm.column[ColumnType.CARD_NUMBER]!,
        CardTerm.column[ColumnType.CARD_TYPE_ID]!,
        CardTerm.column[ColumnType.BARCODE_NUMBER]!,
        CardTerm.column[ColumnType.BARCODE_TYPE]!,
        CardTerm.column[ColumnType.NOTES]!,
        CardTerm.column[ColumnType.CREATE_DATETIME]!,
        CardTerm.column[ColumnType.SORT]!,
      ]);
    } catch (e) {
      // print(e);
    }

    List<CardTerm> cards = [];
    if (maps.isEmpty) {
      return cards;
    }
    for (int i = 0; i < maps.length; i++) {
      cards.add(CardTerm.fromMap(maps[i]));
    }
    return cards;
  }

  Future<int> delete(int id) async {
    return await db!.delete(
      tableName,
      where: '${CardTerm.column[ColumnType.ID]} = ?',
      whereArgs: [id],
    );
  }

  Future deleteAll() async {
    return await db!.delete(
      tableName,
    );
  }

  close() async {
    await db?.close();
  }
}
