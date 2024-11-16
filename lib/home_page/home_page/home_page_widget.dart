import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home_page/exchange_rate/exchange_rate_widget.dart';
import '/main_page/weight/home_header/home_header_widget.dart';
import '/main_page/weight/home_menu_item/home_menu_item_widget.dart';
import '/weight/banlance_stat/banlance_stat_widget.dart';
import '/weight/order_item/order_item_widget.dart';
import '/weight/title/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.homeHeaderModel,
                    updateCallback: () => safeSetState(() {}),
                    child: HomeHeaderWidget(
                      icon: Icon(
                        Icons.notifications_none,
                        color: FlutterFlowTheme.of(context).info,
                        size: 24.0,
                      ),
                      iconAction: () async {
                        context.pushNamed('NotificationPage');
                      },
                      avatarAction: () async {},
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: const BoxDecoration(),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('WarehouseLocationPage');
                            },
                            child: wrapWithModel(
                              model: _model.homeMenuItemModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: HomeMenuItemWidget(
                                icon: Icon(
                                  Icons.location_on_outlined,
                                  color: FlutterFlowTheme.of(context).info,
                                ),
                                label: 'Warehouse \nLocation',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: const Color(0xFF1B1B1B),
                                context: context,
                                builder: (context) {
                                  return GestureDetector(
                                    onTap: () =>
                                        FocusScope.of(context).unfocus(),
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: SizedBox(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.5,
                                        child: const ExchangeRateWidget(),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                            child: wrapWithModel(
                              model: _model.homeMenuItemModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: HomeMenuItemWidget(
                                icon: Icon(
                                  Icons.swap_horiz_sharp,
                                  color: FlutterFlowTheme.of(context).info,
                                ),
                                label: 'Exchange\nrate',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('CalculatorPage');
                            },
                            child: wrapWithModel(
                              model: _model.homeMenuItemModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: HomeMenuItemWidget(
                                icon: FaIcon(
                                  FontAwesomeIcons.calculator,
                                  color: FlutterFlowTheme.of(context).info,
                                ),
                                label: 'Calculate\nshipping fee',
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('RecentNewsPage');
                              },
                              child: wrapWithModel(
                                model: _model.homeMenuItemModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: HomeMenuItemWidget(
                                  icon: FaIcon(
                                    FontAwesomeIcons.newspaper,
                                    color: FlutterFlowTheme.of(context).info,
                                    size: 24.0,
                                  ),
                                  label: 'Recent\nnews',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 6.0),
                          child: wrapWithModel(
                            model: _model.titleModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: const TitleWidget(
                              title: 'Balance',
                              actionLabel: ' ',
                              showAction: false,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 70.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: wrapWithModel(
                            model: _model.banlanceStatModel,
                            updateCallback: () => safeSetState(() {}),
                            child: const BanlanceStatWidget(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 8.0),
                        child: wrapWithModel(
                          model: _model.titleModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: const TitleWidget(
                            title: 'Recent orders',
                            actionLabel: 'See All',
                            showAction: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                  RefreshIndicator(
                    onRefresh: () async {
                      safeSetState(
                          () => _model.listViewPagingController?.refresh());
                      await _model.waitForOnePageForListView();
                    },
                    child: PagedListView<ApiPagingParams, dynamic>(
                      pagingController: _model.setListViewController(
                        (nextPageMarker) =>
                            ApiGroup.apiopsportaldailypagelistCall.call(
                          pageNum: valueOrDefault<String>(
                            nextPageMarker.nextPageNumber.toString(),
                            '1',
                          ),
                          pageSize: '20',
                        ),
                      ),
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      reverse: false,
                      scrollDirection: Axis.vertical,
                      builderDelegate: PagedChildBuilderDelegate<dynamic>(
                        // Customize what your widget looks like when it's loading the first page.
                        firstPageProgressIndicatorBuilder: (_) => Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        ),
                        // Customize what your widget looks like when it's loading another page.
                        newPageProgressIndicatorBuilder: (_) => Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        ),

                        itemBuilder: (context, _, responseListIndex) {
                          final responseListItem = _model
                              .listViewPagingController!
                              .itemList![responseListIndex];
                          return OrderItemWidget(
                            key: Key(
                                'Keyjpc_${responseListIndex}_of_${_model.listViewPagingController!.itemList!.length}'),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
