import '/flutter_flow/flutter_flow_util.dart';
import '/main_page/weight/home_header/home_header_widget.dart';
import '/main_page/weight/home_menu_item/home_menu_item_widget.dart';
import '/weight/banlance_stat/banlance_stat_widget.dart';
import '/weight/order_item/order_item_widget.dart';
import '/weight/title/title_widget.dart';
import 'home_page_s_widget.dart' show HomePageSWidget;
import 'package:flutter/material.dart';

class HomePageSModel extends FlutterFlowModel<HomePageSWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for HomeHeader component.
  late HomeHeaderModel homeHeaderModel;
  // Model for HomeMenuItem component.
  late HomeMenuItemModel homeMenuItemModel1;
  // Model for HomeMenuItem component.
  late HomeMenuItemModel homeMenuItemModel2;
  // Model for HomeMenuItem component.
  late HomeMenuItemModel homeMenuItemModel3;
  // Model for HomeMenuItem component.
  late HomeMenuItemModel homeMenuItemModel4;
  // Model for Title component.
  late TitleModel titleModel1;
  // Model for BanlanceStat component.
  late BanlanceStatModel banlanceStatModel;
  // Model for Title component.
  late TitleModel titleModel2;
  // Model for OrderItem component.
  late OrderItemModel orderItemModel1;
  // Model for OrderItem component.
  late OrderItemModel orderItemModel2;
  // Model for OrderItem component.
  late OrderItemModel orderItemModel3;

  @override
  void initState(BuildContext context) {
    homeHeaderModel = createModel(context, () => HomeHeaderModel());
    homeMenuItemModel1 = createModel(context, () => HomeMenuItemModel());
    homeMenuItemModel2 = createModel(context, () => HomeMenuItemModel());
    homeMenuItemModel3 = createModel(context, () => HomeMenuItemModel());
    homeMenuItemModel4 = createModel(context, () => HomeMenuItemModel());
    titleModel1 = createModel(context, () => TitleModel());
    banlanceStatModel = createModel(context, () => BanlanceStatModel());
    titleModel2 = createModel(context, () => TitleModel());
    orderItemModel1 = createModel(context, () => OrderItemModel());
    orderItemModel2 = createModel(context, () => OrderItemModel());
    orderItemModel3 = createModel(context, () => OrderItemModel());
  }

  @override
  void dispose() {
    homeHeaderModel.dispose();
    homeMenuItemModel1.dispose();
    homeMenuItemModel2.dispose();
    homeMenuItemModel3.dispose();
    homeMenuItemModel4.dispose();
    titleModel1.dispose();
    banlanceStatModel.dispose();
    titleModel2.dispose();
    orderItemModel1.dispose();
    orderItemModel2.dispose();
    orderItemModel3.dispose();
  }
}
