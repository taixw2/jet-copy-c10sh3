import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/weight/label_input/label_input_widget.dart';
import '/weight/title/title_widget.dart';
import 'order_detail_widget.dart' show OrderDetailWidget;
import 'package:flutter/material.dart';

class OrderDetailModel extends FlutterFlowModel<OrderDetailWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel1;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel2;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel3;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // Model for Title component.
  late TitleModel titleModel1;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel4;
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
  // Model for Title component.
  late TitleModel titleModel2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // Model for Title component.
  late TitleModel titleModel3;

  @override
  void initState(BuildContext context) {
    labelInputModel1 = createModel(context, () => LabelInputModel());
    labelInputModel2 = createModel(context, () => LabelInputModel());
    labelInputModel3 = createModel(context, () => LabelInputModel());
    titleModel1 = createModel(context, () => TitleModel());
    labelInputModel4 = createModel(context, () => LabelInputModel());
    labelInputModel5 = createModel(context, () => LabelInputModel());
    labelInputModel6 = createModel(context, () => LabelInputModel());
    labelInputModel7 = createModel(context, () => LabelInputModel());
    labelInputModel8 = createModel(context, () => LabelInputModel());
    labelInputModel9 = createModel(context, () => LabelInputModel());
    titleModel2 = createModel(context, () => TitleModel());
    titleModel3 = createModel(context, () => TitleModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    labelInputModel1.dispose();
    labelInputModel2.dispose();
    labelInputModel3.dispose();
    titleModel1.dispose();
    labelInputModel4.dispose();
    labelInputModel5.dispose();
    labelInputModel6.dispose();
    labelInputModel7.dispose();
    labelInputModel8.dispose();
    labelInputModel9.dispose();
    titleModel2.dispose();
    textFieldFocusNode6?.dispose();
    textController6?.dispose();

    titleModel3.dispose();
  }
}
