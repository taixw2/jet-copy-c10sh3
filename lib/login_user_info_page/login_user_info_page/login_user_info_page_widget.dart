import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/user_info_page/w_user_info_item/w_user_info_item_widget.dart';
import 'package:flutter/material.dart';
import 'login_user_info_page_model.dart';
export 'login_user_info_page_model.dart';

class LoginUserInfoPageWidget extends StatefulWidget {
  const LoginUserInfoPageWidget({super.key});

  @override
  State<LoginUserInfoPageWidget> createState() =>
      _LoginUserInfoPageWidgetState();
}

class _LoginUserInfoPageWidgetState extends State<LoginUserInfoPageWidget> {
  late LoginUserInfoPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginUserInfoPageModel());
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
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 54.0,
            icon: const Icon(
              Icons.chevron_left,
              color: Colors.white,
              size: 24.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'qpn1o0h0' /* JL-444 Joe Wilson */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'SF Pro Display',
                  color: Colors.white,
                  fontSize: 17.0,
                  letterSpacing: 0.0,
                  useGoogleFonts: false,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(72.0),
                  child: Image.network(
                    'https://picsum.photos/seed/901/600',
                    width: 72.0,
                    height: 72.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      '0xd8ltmx' /* Change photo */,
                    ),
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'SF Pro Display',
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'EditUserFieldPage',
                      queryParameters: {
                        'title': serializeParam(
                          'Full name',
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: wrapWithModel(
                    model: _model.wUserInfoItemModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: WUserInfoItemWidget(
                      label: FFLocalizations.of(context).getText(
                        '47foshcv' /* Full name */,
                      ),
                      vvalue: 'Joe Wilson',
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.wUserInfoItemModel2,
                  updateCallback: () => safeSetState(() {}),
                  child: WUserInfoItemWidget(
                    label: FFLocalizations.of(context).getText(
                      '2dfx8q5y' /* User category */,
                    ),
                    vvalue: FFLocalizations.of(context).getText(
                      'nv1ubcr6' /* Client */,
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'EditUserFieldPage',
                      queryParameters: {
                        'title': serializeParam(
                          'Phone',
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: wrapWithModel(
                    model: _model.wUserInfoItemModel3,
                    updateCallback: () => safeSetState(() {}),
                    child: WUserInfoItemWidget(
                      label: FFLocalizations.of(context).getText(
                        'ha0brsav' /* Phone */,
                      ),
                      vvalue: '+86 1222334343',
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'EditUserFieldPage',
                      queryParameters: {
                        'title': serializeParam(
                          'Email',
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: wrapWithModel(
                    model: _model.wUserInfoItemModel4,
                    updateCallback: () => safeSetState(() {}),
                    child: WUserInfoItemWidget(
                      label: FFLocalizations.of(context).getText(
                        'ro3qdrnx' /* Email */,
                      ),
                      vvalue: 'hoafhoahf@qq.com',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
