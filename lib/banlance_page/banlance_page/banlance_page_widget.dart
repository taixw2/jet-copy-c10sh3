import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/main_page/weight/home_balance_item/home_balance_item_widget.dart';
import '/weight/banlance_history_item/banlance_history_item_widget.dart';
import '/weight/title/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'banlance_page_model.dart';
export 'banlance_page_model.dart';

class BanlancePageWidget extends StatefulWidget {
  const BanlancePageWidget({super.key});

  @override
  State<BanlancePageWidget> createState() => _BanlancePageWidgetState();
}

class _BanlancePageWidgetState extends State<BanlancePageWidget> {
  late BanlancePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BanlancePageModel());
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 40.0, 0.0),
                  child: Container(
                    width: 40.0,
                    decoration: const BoxDecoration(),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      icon: const Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        context.pop();
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'ge9bfhbe' /* Banlance */,
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'SF Pro Display',
                          color: Colors.white,
                          fontSize: 17.0,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.edit_outlined,
                      color: FlutterFlowTheme.of(context).info,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.pushNamed('BanlanceEditPage');
                    },
                  ),
                  Builder(
                    builder: (context) => FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.ios_share,
                        color: FlutterFlowTheme.of(context).info,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        await Share.share(
                          'https://baidu.com',
                          sharePositionOrigin: getWidgetBoundingBox(context),
                        );
                      },
                    ),
                  ),
                ].divide(const SizedBox(width: 4.0)),
              ),
            ],
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 72.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: wrapWithModel(
                                model: _model.homeBalanceItemModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: HomeBalanceItemWidget(
                                  amount: '2304',
                                  label: FFLocalizations.of(context).getText(
                                    'wxs70g38' /* Total shipment */,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 1.0,
                              height: 28.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFF292929),
                              ),
                            ),
                            Expanded(
                              child: wrapWithModel(
                                model: _model.homeBalanceItemModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: HomeBalanceItemWidget(
                                  amount: '1290',
                                  label: FFLocalizations.of(context).getText(
                                    'zuhsrldm' /* Have arrived */,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 1.0,
                              height: 28.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFF292929),
                              ),
                            ),
                            Expanded(
                              child: wrapWithModel(
                                model: _model.homeBalanceItemModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: HomeBalanceItemWidget(
                                  amount: FFLocalizations.of(context).getText(
                                    'xkf6tg95' /* 23 $ */,
                                  ),
                                  label: FFLocalizations.of(context).getText(
                                    'ukssewi3' /* Dispatcher's balance */,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 72.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: wrapWithModel(
                                model: _model.homeBalanceItemModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: HomeBalanceItemWidget(
                                  amount: FFLocalizations.of(context).getText(
                                    'r1y9mu1r' /* 2304 $ */,
                                  ),
                                  label: FFLocalizations.of(context).getText(
                                    'b5syltu8' /* Foreign Unloading Fee */,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 1.0,
                              height: 28.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFF292929),
                              ),
                            ),
                            Expanded(
                              child: wrapWithModel(
                                model: _model.homeBalanceItemModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: HomeBalanceItemWidget(
                                  amount: '2304 \$',
                                  label: FFLocalizations.of(context).getText(
                                    'br3fp47u' /* Total Packaging Fee */,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 1.0,
                              height: 28.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFF292929),
                              ),
                            ),
                            Expanded(
                              child: wrapWithModel(
                                model: _model.homeBalanceItemModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: HomeBalanceItemWidget(
                                  amount: '23 \$',
                                  label: FFLocalizations.of(context).getText(
                                    'hfysvrh7' /* Shipping Profit */,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 72.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: wrapWithModel(
                                model: _model.homeBalanceItemModel7,
                                updateCallback: () => safeSetState(() {}),
                                child: HomeBalanceItemWidget(
                                  amount: '2304 \$',
                                  label: FFLocalizations.of(context).getText(
                                    'pursfjwd' /* Arrival Profit */,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 1.0,
                              height: 28.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFF292929),
                              ),
                            ),
                            Expanded(
                              child: wrapWithModel(
                                model: _model.homeBalanceItemModel8,
                                updateCallback: () => safeSetState(() {}),
                                child: HomeBalanceItemWidget(
                                  amount: FFLocalizations.of(context).getText(
                                    'm01973d6' /* 2304 $ */,
                                  ),
                                  label: FFLocalizations.of(context).getText(
                                    'cksi5m5p' /* Agent Commission */,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 1.0,
                              height: 28.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFF292929),
                              ),
                            ),
                            Expanded(
                              child: wrapWithModel(
                                model: _model.homeBalanceItemModel9,
                                updateCallback: () => safeSetState(() {}),
                                child: HomeBalanceItemWidget(
                                  amount: '23 \$',
                                  label: FFLocalizations.of(context).getText(
                                    'wqif6x7b' /* account manager 
commission */
                                    ,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
                child: wrapWithModel(
                  model: _model.titleModel,
                  updateCallback: () => safeSetState(() {}),
                  child: TitleWidget(
                    title: FFLocalizations.of(context).getText(
                      'j2xyzblv' /* History */,
                    ),
                    showAction: false,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: FFLocalizations.of(context).getText(
                        'ispzhwlj' /* All */,
                      ),
                      options: FFButtonOptions(
                        height: 32.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        textStyle:
                            FlutterFlowTheme.of(context).labelSmall.override(
                                  fontFamily: 'SF Pro Display',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                        elevation: 0.0,
                        borderRadius: BorderRadius.circular(24.0),
                        hoverColor: FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                    FlutterFlowDropDown<String>(
                      controller: _model.dropDownValueController ??=
                          FormFieldController<String>(
                        _model.dropDownValue ??=
                            FFLocalizations.of(context).getText(
                          'ba2epd0k' /* Yearly */,
                        ),
                      ),
                      options: [
                        FFLocalizations.of(context).getText(
                          'pfix85dm' /* Yearly */,
                        ),
                        FFLocalizations.of(context).getText(
                          '5l1l5x0h' /* Monthly */,
                        ),
                        FFLocalizations.of(context).getText(
                          'cjo13eyg' /* Weekly */,
                        )
                      ],
                      onChanged: (val) =>
                          safeSetState(() => _model.dropDownValue = val),
                      height: 32.0,
                      textStyle:
                          FlutterFlowTheme.of(context).labelSmall.override(
                                fontFamily: 'SF Pro Display',
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                      hintText: FFLocalizations.of(context).getText(
                        'qkjbyeek' /* Select... */,
                      ),
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).info,
                        size: 24.0,
                      ),
                      fillColor: FlutterFlowTheme.of(context).primary,
                      elevation: 0.0,
                      borderColor: Colors.transparent,
                      borderWidth: 0.0,
                      borderRadius: 24.0,
                      margin:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      hidesUnderline: true,
                      isOverButton: false,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ].divide(const SizedBox(width: 16.0)),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.banlanceHistoryItemModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: const BanlanceHistoryItemWidget(),
                        ),
                        wrapWithModel(
                          model: _model.banlanceHistoryItemModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: const BanlanceHistoryItemWidget(),
                        ),
                        wrapWithModel(
                          model: _model.banlanceHistoryItemModel3,
                          updateCallback: () => safeSetState(() {}),
                          child: const BanlanceHistoryItemWidget(),
                        ),
                        wrapWithModel(
                          model: _model.banlanceHistoryItemModel4,
                          updateCallback: () => safeSetState(() {}),
                          child: const BanlanceHistoryItemWidget(),
                        ),
                        wrapWithModel(
                          model: _model.banlanceHistoryItemModel5,
                          updateCallback: () => safeSetState(() {}),
                          child: const BanlanceHistoryItemWidget(),
                        ),
                      ].divide(const SizedBox(height: 12.0)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
