import '/flutter_flow/flutter_flow_util.dart';
import '/weight/title/title_widget.dart';
import '/weight/upload_image/upload_image_widget.dart';
import 'add_photos_page_widget.dart' show AddPhotosPageWidget;
import 'package:flutter/material.dart';

class AddPhotosPageModel extends FlutterFlowModel<AddPhotosPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Title component.
  late TitleModel titleModel;
  // Model for UploadImage component.
  late UploadImageModel uploadImageModel;

  @override
  void initState(BuildContext context) {
    titleModel = createModel(context, () => TitleModel());
    uploadImageModel = createModel(context, () => UploadImageModel());
  }

  @override
  void dispose() {
    titleModel.dispose();
    uploadImageModel.dispose();
  }
}
