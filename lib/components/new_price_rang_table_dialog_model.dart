import '/flutter_flow/flutter_flow_util.dart';
import 'new_price_rang_table_dialog_widget.dart'
    show NewPriceRangTableDialogWidget;
import 'package:flutter/material.dart';

class NewPriceRangTableDialogModel
    extends FlutterFlowModel<NewPriceRangTableDialogWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
