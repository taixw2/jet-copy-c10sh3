import '/flutter_flow/flutter_flow_util.dart';
import '/main_page/weight/home_balance_item/home_balance_item_widget.dart';
import 'banlance_stat_widget.dart' show BanlanceStatWidget;
import 'package:flutter/material.dart';

class BanlanceStatModel extends FlutterFlowModel<BanlanceStatWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for HomeBalanceItem component.
  late HomeBalanceItemModel homeBalanceItemModel1;
  // Model for HomeBalanceItem component.
  late HomeBalanceItemModel homeBalanceItemModel2;
  // Model for HomeBalanceItem component.
  late HomeBalanceItemModel homeBalanceItemModel3;

  @override
  void initState(BuildContext context) {
    homeBalanceItemModel1 = createModel(context, () => HomeBalanceItemModel());
    homeBalanceItemModel2 = createModel(context, () => HomeBalanceItemModel());
    homeBalanceItemModel3 = createModel(context, () => HomeBalanceItemModel());
  }

  @override
  void dispose() {
    homeBalanceItemModel1.dispose();
    homeBalanceItemModel2.dispose();
    homeBalanceItemModel3.dispose();
  }
}
