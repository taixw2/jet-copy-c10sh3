import '/flutter_flow/flutter_flow_util.dart';
import '/recent_news_page/news_item/news_item_widget.dart';
import 'recent_news_page_widget.dart' show RecentNewsPageWidget;
import 'package:flutter/material.dart';

class RecentNewsPageModel extends FlutterFlowModel<RecentNewsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NewsItem component.
  late NewsItemModel newsItemModel1;
  // Model for NewsItem component.
  late NewsItemModel newsItemModel2;
  // Model for NewsItem component.
  late NewsItemModel newsItemModel3;

  @override
  void initState(BuildContext context) {
    newsItemModel1 = createModel(context, () => NewsItemModel());
    newsItemModel2 = createModel(context, () => NewsItemModel());
    newsItemModel3 = createModel(context, () => NewsItemModel());
  }

  @override
  void dispose() {
    newsItemModel1.dispose();
    newsItemModel2.dispose();
    newsItemModel3.dispose();
  }
}
