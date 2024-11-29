import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/weight/label_input/label_input_widget.dart';
import 'package:flutter/material.dart';
import 'create_calculator_settings_page_model.dart';
export 'create_calculator_settings_page_model.dart';

class CreateCalculatorSettingsPageWidget extends StatefulWidget {
  const CreateCalculatorSettingsPageWidget({super.key});

  @override
  State<CreateCalculatorSettingsPageWidget> createState() =>
      _CreateCalculatorSettingsPageWidgetState();
}

class _CreateCalculatorSettingsPageWidgetState
    extends State<CreateCalculatorSettingsPageWidget> {
  late CreateCalculatorSettingsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateCalculatorSettingsPageModel());
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
              FlutterFlowIconButton(
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
              Text(
                FFLocalizations.of(context).getText(
                  'a3rm99c4' /* Calculator settings */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'SF Pro Display',
                      color: Colors.white,
                      fontSize: 17.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
              FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: FFLocalizations.of(context).getText(
                  'fgjp4jk2' /* Save */,
                ),
                options: FFButtonOptions(
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: const Color(0x007D0000),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'SF Pro Display',
                        color: FlutterFlowTheme.of(context).primary,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ],
          ),
          actions: const [],
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
                  model: _model.labelInputModel1,
                  updateCallback: () => safeSetState(() {}),
                  child: LabelInputWidget(
                    label: FFLocalizations.of(context).getText(
                      'i2kfkhzl' /* Product category name */,
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
                      'hkgl2o37' /* Delivery time */,
                    ),
                    readOnly: false,
                    required: false,
                  ),
                ),
                wrapWithModel(
                  model: _model.labelInputModel3,
                  updateCallback: () => safeSetState(() {}),
                  child: LabelInputWidget(
                    label: FFLocalizations.of(context).getText(
                      'rbuq0yil' /* Insurance max limit */,
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
                      'e38nrg47' /* Insurance by % */,
                    ),
                    readOnly: false,
                    required: false,
                  ),
                ),
                wrapWithModel(
                  model: _model.labelInputModel5,
                  updateCallback: () => safeSetState(() {}),
                  child: LabelInputWidget(
                    label: FFLocalizations.of(context).getText(
                      '6deqmm8s' /* Insurance by density (khm3) */,
                    ),
                    readOnly: false,
                    required: false,
                  ),
                ),
              ].divide(const SizedBox(height: 12.0)),
            ),
          ),
        ),
      ),
    );
  }
}
