import '/flutter_flow/flutter_flow_util.dart';
import '/weight/order_item/order_item_widget.dart';
import 'order_pages_widget.dart' show OrderPagesWidget;
import 'package:flutter/material.dart';

class OrderPagesModel extends FlutterFlowModel<OrderPagesWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for OrderItem component.
  late OrderItemModel orderItemModel1;
  // Model for OrderItem component.
  late OrderItemModel orderItemModel2;
  // Model for OrderItem component.
  late OrderItemModel orderItemModel3;
  // Model for OrderItem component.
  late OrderItemModel orderItemModel4;

  @override
  void initState(BuildContext context) {
    orderItemModel1 = createModel(context, () => OrderItemModel());
    orderItemModel2 = createModel(context, () => OrderItemModel());
    orderItemModel3 = createModel(context, () => OrderItemModel());
    orderItemModel4 = createModel(context, () => OrderItemModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    orderItemModel1.dispose();
    orderItemModel2.dispose();
    orderItemModel3.dispose();
    orderItemModel4.dispose();
  }
}
