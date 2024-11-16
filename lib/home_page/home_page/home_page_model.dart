import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/main_page/weight/home_header/home_header_widget.dart';
import '/main_page/weight/home_menu_item/home_menu_item_widget.dart';
import '/weight/banlance_stat/banlance_stat_widget.dart';
import '/weight/title/title_widget.dart';
import '/backend/schema/structs/index.dart';
import 'dart:async';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HomeHeader component.
  late HomeHeaderModel homeHeaderModel;
  // Model for HomeMenuItem component.
  late HomeMenuItemModel homeMenuItemModel1;
  // Model for HomeMenuItem component.
  late HomeMenuItemModel homeMenuItemModel2;
  // Model for HomeMenuItem component.
  late HomeMenuItemModel homeMenuItemModel3;
  // Model for HomeMenuItem component.
  late HomeMenuItemModel homeMenuItemModel4;
  // Model for Title component.
  late TitleModel titleModel1;
  // Model for BanlanceStat component.
  late BanlanceStatModel banlanceStatModel;
  // Model for Title component.
  late TitleModel titleModel2;
  // State field(s) for ListView widget.

  PagingController<ApiPagingParams, dynamic>? listViewPagingController;
  Function(ApiPagingParams nextPageMarker)? listViewApiCall;

  @override
  void initState(BuildContext context) {
    homeHeaderModel = createModel(context, () => HomeHeaderModel());
    homeMenuItemModel1 = createModel(context, () => HomeMenuItemModel());
    homeMenuItemModel2 = createModel(context, () => HomeMenuItemModel());
    homeMenuItemModel3 = createModel(context, () => HomeMenuItemModel());
    homeMenuItemModel4 = createModel(context, () => HomeMenuItemModel());
    titleModel1 = createModel(context, () => TitleModel());
    banlanceStatModel = createModel(context, () => BanlanceStatModel());
    titleModel2 = createModel(context, () => TitleModel());
  }

  @override
  void dispose() {
    homeHeaderModel.dispose();
    homeMenuItemModel1.dispose();
    homeMenuItemModel2.dispose();
    homeMenuItemModel3.dispose();
    homeMenuItemModel4.dispose();
    titleModel1.dispose();
    banlanceStatModel.dispose();
    titleModel2.dispose();
    listViewPagingController?.dispose();
  }

  /// Additional helper methods.
  PagingController<ApiPagingParams, dynamic> setListViewController(
    Function(ApiPagingParams) apiCall,
  ) {
    listViewApiCall = apiCall;
    return listViewPagingController ??= _createListViewController(apiCall);
  }

  PagingController<ApiPagingParams, dynamic> _createListViewController(
    Function(ApiPagingParams) query,
  ) {
    final controller = PagingController<ApiPagingParams, dynamic>(
      firstPageKey: ApiPagingParams(
        nextPageNumber: 0,
        numItems: 0,
        lastResponse: null,
      ),
    );
    return controller
      ..addPageRequestListener(listViewApiopsportaldailypagelistPage);
  }

  void listViewApiopsportaldailypagelistPage(ApiPagingParams nextPageMarker) =>
      listViewApiCall!(nextPageMarker)
          .then((listViewApiopsportaldailypagelistResponse) {
        final pageItems = (TestStruct.maybeFromMap(
                        listViewApiopsportaldailypagelistResponse.jsonBody)!
                    .rows ??
                [])
            .toList() as List;
        final newNumItems = nextPageMarker.numItems + pageItems.length;
        listViewPagingController?.appendPage(
          pageItems,
          (pageItems.isNotEmpty)
              ? ApiPagingParams(
                  nextPageNumber: nextPageMarker.nextPageNumber + 1,
                  numItems: newNumItems,
                  lastResponse: listViewApiopsportaldailypagelistResponse,
                )
              : null,
        );
      });

  Future waitForOnePageForListView({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete =
          (listViewPagingController?.nextPageKey?.nextPageNumber ?? 0) > 0;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
