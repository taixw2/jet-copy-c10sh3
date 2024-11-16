import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/weight/label_input/label_input_widget.dart';
import '/weight/upload_image/upload_image_widget.dart';
import 'package:flutter/material.dart';
import 'create_couponsettings_page_model.dart';
export 'create_couponsettings_page_model.dart';

class CreateCouponsettingsPageWidget extends StatefulWidget {
  const CreateCouponsettingsPageWidget({super.key});

  @override
  State<CreateCouponsettingsPageWidget> createState() =>
      _CreateCouponsettingsPageWidgetState();
}

class _CreateCouponsettingsPageWidgetState
    extends State<CreateCouponsettingsPageWidget> {
  late CreateCouponsettingsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateCouponsettingsPageModel());
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
              'xthgthag' /* Add coupon */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'SF Pro Display',
                  color: Colors.white,
                  fontSize: 17.0,
                  letterSpacing: 0.0,
                  useGoogleFonts: false,
                ),
          ),
          actions: [
            FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: FFLocalizations.of(context).getText(
                'gesxtukh' /* Save */,
              ),
              options: FFButtonOptions(
                height: 40.0,
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: const Color(0x00FF7D00),
                textStyle: FlutterFlowTheme.of(context).displayMedium.override(
                      fontFamily: 'SF Pro Display',
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
                elevation: 0.0,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.uploadImageModel,
                  updateCallback: () => safeSetState(() {}),
                  child: UploadImageWidget(
                    label: FFLocalizations.of(context).getText(
                      '3o5q7sk7' /* Coupon cover */,
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.labelInputModel1,
                  updateCallback: () => safeSetState(() {}),
                  child: LabelInputWidget(
                    label: FFLocalizations.of(context).getText(
                      'brksuuo9' /* Coupon name */,
                    ),
                    readOnly: false,
                    required: false,
                  ),
                ),
                wrapWithModel(
                  model: _model.labelInputModel2,
                  updateCallback: () => safeSetState(() {}),
                  child: LabelInputWidget(
                    label: FFLocalizations.of(context).getText(
                      '3l8rsoth' /* Coupon Description */,
                    ),
                    readOnly: false,
                    maxLines: 4,
                    required: false,
                  ),
                ),
                wrapWithModel(
                  model: _model.labelInputModel3,
                  updateCallback: () => safeSetState(() {}),
                  child: LabelInputWidget(
                    label: FFLocalizations.of(context).getText(
                      'k2qq5mpb' /* Amount USD */,
                    ),
                    readOnly: false,
                    required: false,
                  ),
                ),
                wrapWithModel(
                  model: _model.labelInputModel4,
                  updateCallback: () => safeSetState(() {}),
                  child: LabelInputWidget(
                    label: FFLocalizations.of(context).getText(
                      'utkbjwxd' /* User ID */,
                    ),
                    readOnly: false,
                    required: false,
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
