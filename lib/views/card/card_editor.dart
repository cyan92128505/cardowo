import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:barcode_scan2/barcode_scan2.dart';

import 'package:cardowo/config/lang_key.dart';
import 'package:cardowo/models/card.dart';
import 'package:cardowo/services/i18n_service.dart';
import 'package:cardowo/services/card_service.dart';
import 'package:cardowo/services/scan_service.dart';
import 'package:cardowo/views/card/card_image.dart';
import 'package:cardowo/views/card/barcode_type_option.dart';
import 'package:cardowo/routes.dart';

enum CharonImageType {
  assets,
  file,
  memory,
}

class CardEditor extends StatefulWidget {
  final bool isCreate;

  const CardEditor({Key? key, required this.isCreate}) : super(key: key);

  @override
  _CardEditorState createState() => _CardEditorState();
}

class _CardEditorState extends State<CardEditor> {
  final _target = CardService().target;
  final _fbKey = GlobalKey<FormBuilderState>();
  final _cardNameController = TextEditingController();
  final _cardNumberController = TextEditingController();
  final _barcodeNumberController = TextEditingController();
  final _barcodeTypeController = TextEditingController();
  final _notesController = TextEditingController();

  final _cardNameFocusNode = FocusNode();
  final _cardNumberFocusNode = FocusNode();
  final _barcodeNumberFocusNode = FocusNode();
  final _barcodeTypeFocusNode = FocusNode();
  final _notesFocusNode = FocusNode();

  @override
  void initState() {
    _cardNameController.text = _target.cardName!;
    _cardNumberController.text = _target.cardNumber ?? '';
    _notesController.text = _target.notes ?? '';
    _barcodeTypeController.text =
        _target.barcodeType ?? barcodeTypeName[BarcodeType.QR_CODE]!;
    _barcodeNumberController.text = _target.barcodeNumber ?? '';

    super.initState();
  }

  String get rawCode => (_barcodeNumberController.text != '')
      ? _barcodeNumberController.text
      : '000000';

  void _fieldFocusChange(FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  @override
  Widget build(BuildContext context) {
    Map<String, String> langDict = I18nService.of(context).getDict();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.isCreate
            ? langDict[LangKey.create]!
            : langDict[LangKey.edit]!),
        centerTitle: true,
        actions: <Widget>[
          MaterialButton(
            child: Text(
              langDict[LangKey.done]!,
              style: TextStyle(color: Theme.of(context).bottomAppBarColor),
            ),
            onPressed: () async {
              if (_fbKey.currentState?.saveAndValidate() == false) {
                return;
              }

              showToast(I18nService.of(context).getText(
                  widget.isCreate ? LangKey.createDone : LangKey.editDone));

              if (widget.isCreate) {
                await CardService().insert();
                Navigator.of(context).pushNamedAndRemoveUntil(
                  AppRoutes.home,
                  (Route<dynamic> route) => false,
                );
              } else {
                await CardService().update(_target);
                Navigator.of(context).pop();
              }
            },
          )
        ],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight * 0.9,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FormBuilder(
                        key: _fbKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const <Widget>[
                                CardImage.front(),
                                CardImage.back(),
                              ],
                            ),
                            FormBuilderTextField(
                              name: 'cardName',
                              focusNode: _cardNameFocusNode,
                              decoration: InputDecoration(
                                labelText: langDict[LangKey.cardName],
                              ),
                              controller: _cardNameController,
                              onChanged: (_) {
                                _target.cardName = _cardNameController.text;
                              },
                              onSubmitted: (_) {
                                _target.cardName = _cardNameController.text;
                                _fieldFocusChange(
                                    _cardNameFocusNode, _cardNumberFocusNode);
                              },
                            ),
                            FormBuilderTextField(
                              name: 'cardNumber',
                              focusNode: _cardNumberFocusNode,
                              decoration: InputDecoration(
                                labelText: langDict[LangKey.cardNumber],
                              ),
                              controller: _cardNumberController,
                              onChanged: (_) {
                                _target.cardNumber = _cardNumberController.text;
                              },
                              onSubmitted: (_) {
                                _target.cardNumber = _cardNumberController.text;
                                _fieldFocusChange(_cardNumberFocusNode,
                                    _barcodeNumberFocusNode);
                              },
                            ),
                            FormBuilder(
                              // name: 'barcodeNumber',
                              // validators: [],
                              child: FormField(
                                enabled: true,
                                builder: (FormFieldState<String> field) {
                                  return Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Expanded(
                                        child: TextField(
                                          controller: _barcodeNumberController,
                                          focusNode: _barcodeNumberFocusNode,
                                          decoration: InputDecoration(
                                            labelText:
                                                langDict[LangKey.barcodeNumber],
                                          ),
                                          onChanged: (value) {
                                            field.didChange(value);
                                            _target.barcodeNumber = value;
                                          },
                                          onSubmitted: (_) {
                                            _fieldFocusChange(
                                              _barcodeNumberFocusNode,
                                              _barcodeTypeFocusNode,
                                            );
                                          },
                                        ),
                                      ),
                                      Center(
                                        child: SizedBox(
                                          width: 32,
                                          height: 32,
                                          child: GestureDetector(
                                            child: Stack(
                                              alignment:
                                                  AlignmentDirectional.center,
                                              children: <Widget>[
                                                Container(
                                                  height: 40.0,
                                                  width: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                                const Icon(
                                                  Icons.remove,
                                                  size: 32.0,
                                                  color: Colors.white,
                                                ),
                                                const Icon(
                                                  Icons.crop_free,
                                                  size: 32.0,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                            onTap: () {
                                              ScanService().pureScan().then(
                                                  (result) =>
                                                      _barcodeScanProcess(
                                                        result: result,
                                                        field: field,
                                                      ));
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                            FormBuilder(
                              // attribute: 'barcodeType',
                              // validators: [],
                              child: FormField(
                                enabled: true,
                                builder: (FormFieldState<String> field) {
                                  return TextField(
                                    readOnly: true,
                                    focusNode: _barcodeTypeFocusNode,
                                    controller: _barcodeTypeController,
                                    decoration: InputDecoration(
                                      labelText: langDict[LangKey.barcodeType],
                                    ),
                                    onTap: () {
                                      _openBarcodeTypeDialog(field);
                                    },
                                    onChanged: (value) {
                                      _barcodeTypeController.text = value;
                                      field.didChange(value);
                                      _target.barcodeType = value;
                                    },
                                  );
                                },
                              ),
                            ),
                            FormBuilderTextField(
                              name: 'notes',
                              focusNode: _notesFocusNode,
                              decoration: InputDecoration(
                                labelText: langDict[LangKey.notes],
                              ),
                              controller: _notesController,
                              onChanged: (_) {
                                _target.notes = _notesController.text;
                              },
                              onSubmitted: (_) {
                                _target.notes = _notesController.text;
                              },
                            ),
                          ],
                        ),
                      ),
                      ButtonBar(
                        children: <Widget>[
                          widget.isCreate
                              ? Container()
                              : TextButton(
                                  child: Text(
                                    langDict[LangKey.delete]!,
                                    style: const TextStyle(
                                      color: Colors.redAccent,
                                    ),
                                  ),
                                  onPressed: () => _showAlert(context),
                                )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _openBarcodeTypeDialog(FormFieldState<String> field) =>
      Navigator.of(context)
          .push(
            DialogTransitionRoute(
              page: const BarcodeTypeOptionList(),
            ),
          )
          .then(
            (_) => setState(
              () {
                _barcodeTypeController.text = _target.barcodeType!;
                field.didChange(_target.barcodeType);

                _fieldFocusChange(
                  _barcodeTypeFocusNode,
                  _notesFocusNode,
                );
              },
            ),
          );

  void _showAlert(BuildContext context) {
    Alert(
      context: context,
      type: AlertType.warning,
      title: I18nService.of(context).getText(LangKey.delete),
      desc: I18nService.of(context).getText(LangKey.alertDeleteCard),
      style: const AlertStyle(
          backgroundColor: Colors.white, overlayColor: Colors.black54),
      buttons: [
        DialogButton(
          child: Text(
            I18nService.of(context).getText(LangKey.yes),
          ),
          onPressed: () async {
            await CardService().delete(_target.id!);
            CardService().clean();
            Navigator.of(context).pop();
            Navigator.of(context)
                .pushNamedAndRemoveUntil(AppRoutes.home, (_) => false);
          },
          color: Theme.of(context).primaryColor,
        ),
        DialogButton(
          child: Text(
            I18nService.of(context).getText(LangKey.no),
          ),
          onPressed: () => Navigator.pop(context),
          color: Theme.of(context).primaryColor,
        )
      ],
    ).show();
  }

  void _barcodeScanProcess({
    required ScanResult result,
    required FormFieldState<String> field,
  }) {
    if (result.type != ResultType.Barcode) {
      showToast(I18nService.of(context).getText(LangKey.barcodeUnsuppoest));

      return;
    }

    _barcodeNumberController.text = result.rawContent;
    field.didChange(result.rawContent);
    _target.barcodeNumber = result.rawContent;

    _barcodeTypeController.text = result.formatNote;
    _target.barcodeType = result.formatNote;

    _fieldFocusChange(
      _barcodeNumberFocusNode,
      _barcodeTypeFocusNode,
    );
  }
}
