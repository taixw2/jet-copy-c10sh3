import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/weight/banlance_history_item/banlance_history_item_widget.dart';
import '/weight/title/title_widget.dart';
import 'preview_wallet_page_widget.dart' show PreviewWalletPageWidget;
import 'package:flutter/material.dart';

class PreviewWalletPageModel extends FlutterFlowModel<PreviewWalletPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Title component.
  late TitleModel titleModel1;
  // Model for Title component.
  late TitleModel titleModel2;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for BanlanceHistoryItem component.
  late BanlanceHistoryItemModel banlanceHistoryItemModel1;
  // Model for BanlanceHistoryItem component.
  late BanlanceHistoryItemModel banlanceHistoryItemModel2;
  // Model for BanlanceHistoryItem component.
  late BanlanceHistoryItemModel banlanceHistoryItemModel3;
  // Model for BanlanceHistoryItem component.
  late BanlanceHistoryItemModel banlanceHistoryItemModel4;
  // Model for BanlanceHistoryItem component.
  late BanlanceHistoryItemModel banlanceHistoryItemModel5;

  @override
  void initState(BuildContext context) {
    titleModel1 = createModel(context, () => TitleModel());
    titleModel2 = createModel(context, () => TitleModel());
    banlanceHistoryItemModel1 =
        createModel(context, () => BanlanceHistoryItemModel());
    banlanceHistoryItemModel2 =
        createModel(context, () => BanlanceHistoryItemModel());
    banlanceHistoryItemModel3 =
        createModel(context, () => BanlanceHistoryItemModel());
    banlanceHistoryItemModel4 =
        createModel(context, () => BanlanceHistoryItemModel());
    banlanceHistoryItemModel5 =
        createModel(context, () => BanlanceHistoryItemModel());
  }

  @override
  void dispose() {
    titleModel1.dispose();
    titleModel2.dispose();
    banlanceHistoryItemModel1.dispose();
    banlanceHistoryItemModel2.dispose();
    banlanceHistoryItemModel3.dispose();
    banlanceHistoryItemModel4.dispose();
    banlanceHistoryItemModel5.dispose();
  }
}
