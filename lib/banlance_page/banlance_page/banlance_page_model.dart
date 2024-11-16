import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/main_page/weight/home_balance_item/home_balance_item_widget.dart';
import '/weight/banlance_history_item/banlance_history_item_widget.dart';
import '/weight/title/title_widget.dart';
import 'banlance_page_widget.dart' show BanlancePageWidget;
import 'package:flutter/material.dart';

class BanlancePageModel extends FlutterFlowModel<BanlancePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HomeBalanceItem component.
  late HomeBalanceItemModel homeBalanceItemModel1;
  // Model for HomeBalanceItem component.
  late HomeBalanceItemModel homeBalanceItemModel2;
  // Model for HomeBalanceItem component.
  late HomeBalanceItemModel homeBalanceItemModel3;
  // Model for HomeBalanceItem component.
  late HomeBalanceItemModel homeBalanceItemModel4;
  // Model for HomeBalanceItem component.
  late HomeBalanceItemModel homeBalanceItemModel5;
  // Model for HomeBalanceItem component.
  late HomeBalanceItemModel homeBalanceItemModel6;
  // Model for HomeBalanceItem component.
  late HomeBalanceItemModel homeBalanceItemModel7;
  // Model for HomeBalanceItem component.
  late HomeBalanceItemModel homeBalanceItemModel8;
  // Model for HomeBalanceItem component.
  late HomeBalanceItemModel homeBalanceItemModel9;
  // Model for Title component.
  late TitleModel titleModel;
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
    homeBalanceItemModel1 = createModel(context, () => HomeBalanceItemModel());
    homeBalanceItemModel2 = createModel(context, () => HomeBalanceItemModel());
    homeBalanceItemModel3 = createModel(context, () => HomeBalanceItemModel());
    homeBalanceItemModel4 = createModel(context, () => HomeBalanceItemModel());
    homeBalanceItemModel5 = createModel(context, () => HomeBalanceItemModel());
    homeBalanceItemModel6 = createModel(context, () => HomeBalanceItemModel());
    homeBalanceItemModel7 = createModel(context, () => HomeBalanceItemModel());
    homeBalanceItemModel8 = createModel(context, () => HomeBalanceItemModel());
    homeBalanceItemModel9 = createModel(context, () => HomeBalanceItemModel());
    titleModel = createModel(context, () => TitleModel());
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
    homeBalanceItemModel1.dispose();
    homeBalanceItemModel2.dispose();
    homeBalanceItemModel3.dispose();
    homeBalanceItemModel4.dispose();
    homeBalanceItemModel5.dispose();
    homeBalanceItemModel6.dispose();
    homeBalanceItemModel7.dispose();
    homeBalanceItemModel8.dispose();
    homeBalanceItemModel9.dispose();
    titleModel.dispose();
    banlanceHistoryItemModel1.dispose();
    banlanceHistoryItemModel2.dispose();
    banlanceHistoryItemModel3.dispose();
    banlanceHistoryItemModel4.dispose();
    banlanceHistoryItemModel5.dispose();
  }
}
