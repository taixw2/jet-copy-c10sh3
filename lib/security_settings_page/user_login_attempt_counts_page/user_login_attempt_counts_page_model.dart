import '/flutter_flow/flutter_flow_util.dart';
import '/weight/label_input/label_input_widget.dart';
import 'user_login_attempt_counts_page_widget.dart'
    show UserLoginAttemptCountsPageWidget;
import 'package:flutter/material.dart';

class UserLoginAttemptCountsPageModel
    extends FlutterFlowModel<UserLoginAttemptCountsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for LabelInput component.
  late LabelInputModel labelInputModel;

  @override
  void initState(BuildContext context) {
    labelInputModel = createModel(context, () => LabelInputModel());
  }

  @override
  void dispose() {
    labelInputModel.dispose();
  }
}
