import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'today_exchange_rate_model.dart';
export 'today_exchange_rate_model.dart';

class TodayExchangeRateWidget extends StatefulWidget {
  const TodayExchangeRateWidget({super.key});

  @override
  State<TodayExchangeRateWidget> createState() =>
      _TodayExchangeRateWidgetState();
}

class _TodayExchangeRateWidgetState extends State<TodayExchangeRateWidget> {
  late TodayExchangeRateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TodayExchangeRateModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              FFLocalizations.of(context).getText(
                'oyev7d54' /* 今日汇率 */,
              ),
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    fontFamily: 'SF Pro Display',
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).thirdBackground,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'r81bifd1' /* 1$ */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'SF Pro Display',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Icon(
                          Icons.swap_horiz,
                          color: FlutterFlowTheme.of(context).info,
                          size: 24.0,
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'r8t68hc4' /* 100RU */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'SF Pro Display',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).thirdBackground,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'qb8baxnz' /* 1USTD */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'SF Pro Display',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Icon(
                          Icons.swap_horiz,
                          color: FlutterFlowTheme.of(context).info,
                          size: 24.0,
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'iqckz8z0' /* 7.5¥ */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'SF Pro Display',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).thirdBackground,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            '8fe9ia89' /* 汇卡1¥ */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'SF Pro Display',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Icon(
                          Icons.swap_horiz,
                          color: FlutterFlowTheme.of(context).info,
                          size: 24.0,
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'qtyode0f' /* 14.4RUB */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'SF Pro Display',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).thirdBackground,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            '899llkf5' /* 现金1¥ */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'SF Pro Display',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Icon(
                          Icons.swap_horiz,
                          color: FlutterFlowTheme.of(context).info,
                          size: 24.0,
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'dau3i9kv' /* 14.4RUB */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'SF Pro Display',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ].divide(const SizedBox(height: 8.0)),
            ),
          ].divide(const SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
