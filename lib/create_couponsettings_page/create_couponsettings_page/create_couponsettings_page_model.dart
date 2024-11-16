import '/flutter_flow/flutter_flow_util.dart';
import '/weight/label_input/label_input_widget.dart';
import '/weight/upload_image/upload_image_widget.dart';
import 'create_couponsettings_page_widget.dart'
    show CreateCouponsettingsPageWidget;
import 'package:flutter/material.dart';

class CreateCouponsettingsPageModel
    extends FlutterFlowModel<CreateCouponsettingsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for UploadImage component.
  late UploadImageModel uploadImageModel;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel1;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel2;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel3;
  // Model for LabelInput component.
  late LabelInputModel labelInputModel4;

  @override
  void initState(BuildContext context) {
    uploadImageModel = createModel(context, () => UploadImageModel());
    labelInputModel1 = createModel(context, () => LabelInputModel());
    labelInputModel2 = createModel(context, () => LabelInputModel());
    labelInputModel3 = createModel(context, () => LabelInputModel());
    labelInputModel4 = createModel(context, () => LabelInputModel());
  }

  @override
  void dispose() {
    uploadImageModel.dispose();
    labelInputModel1.dispose();
    labelInputModel2.dispose();
    labelInputModel3.dispose();
    labelInputModel4.dispose();
  }
}
