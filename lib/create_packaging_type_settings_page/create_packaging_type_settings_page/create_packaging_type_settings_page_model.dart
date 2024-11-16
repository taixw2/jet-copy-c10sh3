import '/flutter_flow/flutter_flow_util.dart';
import '/weight/label_input/label_input_widget.dart';
import '/weight/upload_image/upload_image_widget.dart';
import 'create_packaging_type_settings_page_widget.dart'
    show CreatePackagingTypeSettingsPageWidget;
import 'package:flutter/material.dart';

class CreatePackagingTypeSettingsPageModel
    extends FlutterFlowModel<CreatePackagingTypeSettingsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for UploadImage component.
  late UploadImageModel uploadImageModel;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel;

  @override
  void initState(BuildContext context) {
    uploadImageModel = createModel(context, () => UploadImageModel());
    labelInputModel = createModel(context, () => LabelInputModel());
  }

  @override
  void dispose() {
    uploadImageModel.dispose();
    labelInputModel.dispose();
  }
}
