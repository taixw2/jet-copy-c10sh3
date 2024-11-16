import '/flutter_flow/flutter_flow_util.dart';
import '/weight/title/title_widget.dart';
import 'couponsettings_page_widget.dart' show CouponsettingsPageWidget;
import 'package:flutter/material.dart';

class CouponsettingsPageModel
    extends FlutterFlowModel<CouponsettingsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Title component.
  late TitleModel titleModel;

  @override
  void initState(BuildContext context) {
    titleModel = createModel(context, () => TitleModel());
  }

  @override
  void dispose() {
    titleModel.dispose();
  }
}
