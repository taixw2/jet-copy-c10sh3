import '/flutter_flow/flutter_flow_util.dart';
import '/weight/label_input/label_input_widget.dart';
import 'create_warehouse_location_settings_page_widget.dart'
    show CreateWarehouseLocationSettingsPageWidget;
import 'package:flutter/material.dart';

class CreateWarehouseLocationSettingsPageModel
    extends FlutterFlowModel<CreateWarehouseLocationSettingsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for LabelInput component.
  late LabelInputModel labelInputModel;

  @override
  void initState(BuildContext context) {
    labelInputModel = createModel(context, () => LabelInputModel());
  }

  @override
  void dispose() {
    labelInputModel.dispose();
  }
}
