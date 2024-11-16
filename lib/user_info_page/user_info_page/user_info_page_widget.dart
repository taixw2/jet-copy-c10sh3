import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/user_info_page/w_user_info_item/w_user_info_item_widget.dart';
import 'package:flutter/material.dart';
import 'user_info_page_model.dart';
export 'user_info_page_model.dart';

class UserInfoPageWidget extends StatefulWidget {
  const UserInfoPageWidget({super.key});

  @override
  State<UserInfoPageWidget> createState() => _UserInfoPageWidgetState();
}

class _UserInfoPageWidgetState extends State<UserInfoPageWidget> {
  late UserInfoPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserInfoPageModel());
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
              '3pagm49d' /* JL-443 Joe Wilson */,
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
                      'lwc4q2ze' /* Change photo */,
                    ),
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'SF Pro Display',
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                wrapWithModel(
                  model: _model.wUserInfoItemModel1,
                  updateCallback: () => safeSetState(() {}),
                  child: WUserInfoItemWidget(
                    label: FFLocalizations.of(context).getText(
                      'x4sbszo8' /* Full name */,
                    ),
                    vvalue: 'Joe Wilson',
                  ),
                ),
                wrapWithModel(
                  model: _model.wUserInfoItemModel2,
                  updateCallback: () => safeSetState(() {}),
                  child: WUserInfoItemWidget(
                    label: FFLocalizations.of(context).getText(
                      'fjtqch6f' /* User category */,
                    ),
                    vvalue: 'Client',
                  ),
                ),
                wrapWithModel(
                  model: _model.wUserInfoItemModel3,
                  updateCallback: () => safeSetState(() {}),
                  child: WUserInfoItemWidget(
                    label: FFLocalizations.of(context).getText(
                      'ixmtwmie' /* Phone */,
                    ),
                    vvalue: '+86 1222334343',
                  ),
                ),
                wrapWithModel(
                  model: _model.wUserInfoItemModel4,
                  updateCallback: () => safeSetState(() {}),
                  child: WUserInfoItemWidget(
                    label: FFLocalizations.of(context).getText(
                      '4pdk7y6d' /* Email */,
                    ),
                    vvalue: 'hoafhoahf@qq.com',
                  ),
                ),
                wrapWithModel(
                  model: _model.wUserInfoItemModel5,
                  updateCallback: () => safeSetState(() {}),
                  child: WUserInfoItemWidget(
                    label: FFLocalizations.of(context).getText(
                      'vbm2lbhp' /* Postal code */,
                    ),
                    vvalue: '893ZWDA',
                  ),
                ),
                wrapWithModel(
                  model: _model.wUserInfoItemModel6,
                  updateCallback: () => safeSetState(() {}),
                  child: WUserInfoItemWidget(
                    label: FFLocalizations.of(context).getText(
                      't6weifr6' /* Client’s Agent ID */,
                    ),
                    vvalue: 'asdfasdfasdfasf',
                  ),
                ),
                wrapWithModel(
                  model: _model.wUserInfoItemModel7,
                  updateCallback: () => safeSetState(() {}),
                  child: WUserInfoItemWidget(
                    label: FFLocalizations.of(context).getText(
                      '7xpu2ldt' /* Client’s Manger ID */,
                    ),
                    vvalue: 'ajlfohalfhalf',
                  ),
                ),
                wrapWithModel(
                  model: _model.wUserInfoItemModel8,
                  updateCallback: () => safeSetState(() {}),
                  child: WUserInfoItemWidget(
                    label: FFLocalizations.of(context).getText(
                      'x575m7yl' /* Password */,
                    ),
                    vvalue: 'dfgdhrthfgsdgf',
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
