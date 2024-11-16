import '/flutter_flow/flutter_flow_util.dart';
import '/weight/title/title_widget.dart';
import 'create_user_permission_settings_page_widget.dart'
    show CreateUserPermissionSettingsPageWidget;
import 'package:flutter/material.dart';

class CreateUserPermissionSettingsPageModel
    extends FlutterFlowModel<CreateUserPermissionSettingsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Title component.
  late TitleModel titleModel1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for Title component.
  late TitleModel titleModel2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;

  @override
  void initState(BuildContext context) {
    titleModel1 = createModel(context, () => TitleModel());
    titleModel2 = createModel(context, () => TitleModel());
  }

  @override
  void dispose() {
    titleModel1.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    titleModel2.dispose();
  }
}
