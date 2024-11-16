import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/weight/label_input/label_input_widget.dart';
import '/weight/title/title_widget.dart';
import 'create_order_widget.dart' show CreateOrderWidget;
import 'package:flutter/material.dart';

class CreateOrderModel extends FlutterFlowModel<CreateOrderWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Title component.
  late TitleModel titleModel1;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel1;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel2;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel3;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel4;
  // Model for Title component.
  late TitleModel titleModel2;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel5;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel6;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel7;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel8;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel9;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for Title component.
  late TitleModel titleModel3;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel10;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel11;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel12;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel13;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel14;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel15;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel16;
  // Model for Title component.
  late TitleModel titleModel4;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for Title component.
  late TitleModel titleModel5;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {
    titleModel1 = createModel(context, () => TitleModel());
    labelInputModel1 = createModel(context, () => LabelInputModel());
    labelInputModel2 = createModel(context, () => LabelInputModel());
    labelInputModel3 = createModel(context, () => LabelInputModel());
    labelInputModel4 = createModel(context, () => LabelInputModel());
    titleModel2 = createModel(context, () => TitleModel());
    labelInputModel5 = createModel(context, () => LabelInputModel());
    labelInputModel6 = createModel(context, () => LabelInputModel());
    labelInputModel7 = createModel(context, () => LabelInputModel());
    labelInputModel8 = createModel(context, () => LabelInputModel());
    labelInputModel9 = createModel(context, () => LabelInputModel());
    titleModel3 = createModel(context, () => TitleModel());
    labelInputModel10 = createModel(context, () => LabelInputModel());
    labelInputModel11 = createModel(context, () => LabelInputModel());
    labelInputModel12 = createModel(context, () => LabelInputModel());
    labelInputModel13 = createModel(context, () => LabelInputModel());
    labelInputModel14 = createModel(context, () => LabelInputModel());
    labelInputModel15 = createModel(context, () => LabelInputModel());
    labelInputModel16 = createModel(context, () => LabelInputModel());
    titleModel4 = createModel(context, () => TitleModel());
    titleModel5 = createModel(context, () => TitleModel());
  }

  @override
  void dispose() {
    titleModel1.dispose();
    labelInputModel1.dispose();
    labelInputModel2.dispose();
    labelInputModel3.dispose();
    labelInputModel4.dispose();
    titleModel2.dispose();
    labelInputModel5.dispose();
    labelInputModel6.dispose();
    labelInputModel7.dispose();
    labelInputModel8.dispose();
    labelInputModel9.dispose();
    titleModel3.dispose();
    labelInputModel10.dispose();
    labelInputModel11.dispose();
    labelInputModel12.dispose();
    labelInputModel13.dispose();
    labelInputModel14.dispose();
    labelInputModel15.dispose();
    labelInputModel16.dispose();
    titleModel4.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    titleModel5.dispose();
  }
}
