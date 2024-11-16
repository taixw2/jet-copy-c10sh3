import '/flutter_flow/flutter_flow_util.dart';
import 'custom_clearance_widget.dart' show CustomClearanceWidget;
import 'package:flutter/material.dart';

class CustomClearanceModel extends FlutterFlowModel<CustomClearanceWidget> {
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
