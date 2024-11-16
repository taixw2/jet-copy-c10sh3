import '/flutter_flow/flutter_flow_util.dart';
import '/main_page/weight/home_header/home_header_widget.dart';
import 'profile_pages_widget.dart' show ProfilePagesWidget;
import 'package:flutter/material.dart';

class ProfilePagesModel extends FlutterFlowModel<ProfilePagesWidget> {
  ///  State fields for stateful widgets in this component.

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
