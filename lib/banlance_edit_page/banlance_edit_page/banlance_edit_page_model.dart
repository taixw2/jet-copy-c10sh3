import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/weight/label_input/label_input_widget.dart';
import 'banlance_edit_page_widget.dart' show BanlanceEditPageWidget;
import 'package:flutter/material.dart';

class BanlanceEditPageModel extends FlutterFlowModel<BanlanceEditPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel1;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    labelInputModel1 = createModel(context, () => LabelInputModel());
    labelInputModel2 = createModel(context, () => LabelInputModel());
  }

  @override
  void dispose() {
    labelInputModel1.dispose();
    labelInputModel2.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
