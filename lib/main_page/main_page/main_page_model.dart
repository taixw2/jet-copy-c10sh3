import '/flutter_flow/flutter_flow_util.dart';
import '/home_page/home_page_s/home_page_s_widget.dart';
import '/order_page/order_pages/order_pages_widget.dart';
import '/profile_page/profile_pages/profile_pages_widget.dart';
import 'main_page_widget.dart' show MainPageWidget;
import 'package:flutter/material.dart';

class MainPageModel extends FlutterFlowModel<MainPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for HomePageS component.
  late HomePageSModel homePageSModel;
  // Model for OrderPages component.
  late OrderPagesModel orderPagesModel;
  // Model for ProfilePages component.
  late ProfilePagesModel profilePagesModel;

  @override
  void initState(BuildContext context) {
    homePageSModel = createModel(context, () => HomePageSModel());
    orderPagesModel = createModel(context, () => OrderPagesModel());
    profilePagesModel = createModel(context, () => ProfilePagesModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    homePageSModel.dispose();
    orderPagesModel.dispose();
    profilePagesModel.dispose();
  }
}
