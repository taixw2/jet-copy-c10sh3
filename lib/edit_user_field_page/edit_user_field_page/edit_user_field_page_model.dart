import '/flutter_flow/flutter_flow_util.dart';
import 'edit_user_field_page_widget.dart' show EditUserFieldPageWidget;
import 'package:flutter/material.dart';

class EditUserFieldPageModel extends FlutterFlowModel<EditUserFieldPageWidget> {
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
