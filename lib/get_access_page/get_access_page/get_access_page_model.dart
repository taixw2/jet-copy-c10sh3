import '/flutter_flow/flutter_flow_util.dart';
import '/weight/label_input/label_input_widget.dart';
import 'get_access_page_widget.dart' show GetAccessPageWidget;
import 'package:flutter/material.dart';

class GetAccessPageModel extends FlutterFlowModel<GetAccessPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for LabelInput component.
  late LabelInputModel labelInputModel1;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel2;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel3;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel4;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel5;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel6;

  @override
  void initState(BuildContext context) {
    labelInputModel1 = createModel(context, () => LabelInputModel());
    labelInputModel2 = createModel(context, () => LabelInputModel());
    labelInputModel3 = createModel(context, () => LabelInputModel());
    labelInputModel4 = createModel(context, () => LabelInputModel());
    labelInputModel5 = createModel(context, () => LabelInputModel());
    labelInputModel6 = createModel(context, () => LabelInputModel());
  }

  @override
  void dispose() {
    labelInputModel1.dispose();
    labelInputModel2.dispose();
    labelInputModel3.dispose();
    labelInputModel4.dispose();
    labelInputModel5.dispose();
    labelInputModel6.dispose();
  }
}
