import '/flutter_flow/flutter_flow_util.dart';
import '/weight/steps/steps_widget.dart';
import 'order_item_widget.dart' show OrderItemWidget;
import 'package:flutter/material.dart';

class OrderItemModel extends FlutterFlowModel<OrderItemWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Steps component.
  late StepsModel stepsModel;

  @override
  void initState(BuildContext context) {
    stepsModel = createModel(context, () => StepsModel());
  }

  @override
  void dispose() {
    stepsModel.dispose();
  }
}
