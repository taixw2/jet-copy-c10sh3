import '/flutter_flow/flutter_flow_util.dart';
import 'label_input_widget.dart' show LabelInputWidget;
import 'package:flutter/material.dart';

class LabelInputModel extends FlutterFlowModel<LabelInputWidget> {
  ///  State fields for stateful widgets in this component.

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
