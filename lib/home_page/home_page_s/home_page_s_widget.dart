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
import 'home_page_s_model.dart';
export 'home_page_s_model.dart';

class HomePageSWidget extends StatefulWidget {
  /// 15627784443
  const HomePageSWidget({super.key});

  @override
  State<HomePageSWidget> createState() => _HomePageSWidgetState();
}

class _HomePageSWidgetState extends State<HomePageSWidget> {
  late HomePageSModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageSModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
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
                          label: FFLocalizations.of(context).getText(
                            'kexujyoo' /* Warehouse 
Location */
                            ,
                          ),
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
                            return Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: SizedBox(
                                height: MediaQuery.sizeOf(context).height * 0.5,
                                child: const ExchangeRateWidget(),
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
                          label: FFLocalizations.of(context).getText(
                            '1s32ijfv' /* Exchange
rate */
                            ,
                          ),
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
                          label: FFLocalizations.of(context).getText(
                            'opfh0jr9' /* Calculate
shipping fee */
                            ,
                          ),
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
                            label: FFLocalizations.of(context).getText(
                              '3i8abjs4' /* Recent
news */
                              ,
                            ),
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
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 6.0),
                    child: wrapWithModel(
                      model: _model.titleModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: TitleWidget(
                        title: FFLocalizations.of(context).getText(
                          'v74unj4k' /* Balance */,
                        ),
                        actionLabel: ' ',
                        showAction: false,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
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
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 8.0),
                  child: wrapWithModel(
                    model: _model.titleModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: TitleWidget(
                      title: FFLocalizations.of(context).getText(
                        'l8b3tm7f' /* Recent orders */,
                      ),
                      actionLabel: FFLocalizations.of(context).getText(
                        '4vd3nrab' /* See All */,
                      ),
                      showAction: true,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.orderItemModel1,
                  updateCallback: () => safeSetState(() {}),
                  child: const OrderItemWidget(),
                ),
                wrapWithModel(
                  model: _model.orderItemModel2,
                  updateCallback: () => safeSetState(() {}),
                  child: const OrderItemWidget(),
                ),
                wrapWithModel(
                  model: _model.orderItemModel3,
                  updateCallback: () => safeSetState(() {}),
                  child: const OrderItemWidget(),
                ),
              ].divide(const SizedBox(height: 12.0)),
            ),
          ],
        ),
      ),
    );
  }
}
