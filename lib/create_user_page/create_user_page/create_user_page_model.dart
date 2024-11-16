import '/flutter_flow/flutter_flow_util.dart';
import '/weight/label_input/label_input_widget.dart';
import 'create_user_page_widget.dart' show CreateUserPageWidget;
import 'package:flutter/material.dart';

class CreateUserPageModel extends FlutterFlowModel<CreateUserPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for LabelInput component.
  late LabelInputModel labelInputModel1;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel2;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel3;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel4;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel5;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel6;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel7;

  @override
  void initState(BuildContext context) {
    labelInputModel1 = createModel(context, () => LabelInputModel());
    labelInputModel2 = createModel(context, () => LabelInputModel());
    labelInputModel3 = createModel(context, () => LabelInputModel());
    labelInputModel4 = createModel(context, () => LabelInputModel());
    labelInputModel5 = createModel(context, () => LabelInputModel());
    labelInputModel6 = createModel(context, () => LabelInputModel());
    labelInputModel7 = createModel(context, () => LabelInputModel());
  }

  @override
  void dispose() {
    labelInputModel1.dispose();
    labelInputModel2.dispose();
    labelInputModel3.dispose();
    labelInputModel4.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    labelInputModel5.dispose();
    labelInputModel6.dispose();
    labelInputModel7.dispose();
  }
}
