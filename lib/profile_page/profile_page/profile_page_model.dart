import '/flutter_flow/flutter_flow_util.dart';
import '/main_page/weight/home_header/home_header_widget.dart';
import 'profile_page_widget.dart' show ProfilePageWidget;
import 'package:flutter/material.dart';

class ProfilePageModel extends FlutterFlowModel<ProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HomeHeader component.
  late HomeHeaderModel homeHeaderModel;

  @override
  void initState(BuildContext context) {
    homeHeaderModel = createModel(context, () => HomeHeaderModel());
  }

  @override
  void dispose() {
    homeHeaderModel.dispose();
  }
}
