import '/flutter_flow/flutter_flow_util.dart';
import '/user_info_page/w_user_info_item/w_user_info_item_widget.dart';
import 'login_user_info_page_widget.dart' show LoginUserInfoPageWidget;
import 'package:flutter/material.dart';

class LoginUserInfoPageModel extends FlutterFlowModel<LoginUserInfoPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for WUserInfoItem component.
  late WUserInfoItemModel wUserInfoItemModel1;
  // Model for WUserInfoItem component.
  late WUserInfoItemModel wUserInfoItemModel2;
  // Model for WUserInfoItem component.
  late WUserInfoItemModel wUserInfoItemModel3;
  // Model for WUserInfoItem component.
  late WUserInfoItemModel wUserInfoItemModel4;

  @override
  void initState(BuildContext context) {
    wUserInfoItemModel1 = createModel(context, () => WUserInfoItemModel());
    wUserInfoItemModel2 = createModel(context, () => WUserInfoItemModel());
    wUserInfoItemModel3 = createModel(context, () => WUserInfoItemModel());
    wUserInfoItemModel4 = createModel(context, () => WUserInfoItemModel());
  }

  @override
  void dispose() {
    wUserInfoItemModel1.dispose();
    wUserInfoItemModel2.dispose();
    wUserInfoItemModel3.dispose();
    wUserInfoItemModel4.dispose();
  }
}
