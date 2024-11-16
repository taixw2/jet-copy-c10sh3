import '/flutter_flow/flutter_flow_util.dart';
import 'wallet_settings_page_widget.dart' show WalletSettingsPageWidget;
import 'package:flutter/material.dart';

class WalletSettingsPageModel
    extends FlutterFlowModel<WalletSettingsPageWidget> {
  ///  Local state fields for this page.

  String currentRole = 'Admin';

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