import '/flutter_flow/flutter_flow_util.dart';
import 'all_user_page_widget.dart' show AllUserPageWidget;
import 'package:flutter/material.dart';

class AllUserPageModel extends FlutterFlowModel<AllUserPageWidget> {
  ///  Local state fields for this page.

  String currentRole = 'All';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
