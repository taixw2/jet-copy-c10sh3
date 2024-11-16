import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/weight/label_input/label_input_widget.dart';
import 'package:flutter/material.dart';
import 'email_settings_page_model.dart';
export 'email_settings_page_model.dart';

class EmailSettingsPageWidget extends StatefulWidget {
  const EmailSettingsPageWidget({super.key});

  @override
  State<EmailSettingsPageWidget> createState() =>
      _EmailSettingsPageWidgetState();
}

class _EmailSettingsPageWidgetState extends State<EmailSettingsPageWidget> {
  late EmailSettingsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmailSettingsPageModel());
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
              'd46d9vck' /* Email settings */,
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
                'ixms57wn' /* Edit */,
              ),
              options: FFButtonOptions(
                height: 40.0,
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: const Color(0x00FF7D00),
                textStyle: FlutterFlowTheme.of(context).titleMedium.override(
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
                  model: _model.labelInputModel1,
                  updateCallback: () => safeSetState(() {}),
                  child: const LabelInputWidget(
                    label: 'Use queue job for mail transaction?',
                    readOnly: false,
                    required: false,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: wrapWithModel(
                        model: _model.labelInputModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: const LabelInputWidget(
                          label: 'Mail driver type',
                          readOnly: false,
                          required: false,
                        ),
                      ),
                    ),
                    Expanded(
                      child: wrapWithModel(
                        model: _model.labelInputModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: const LabelInputWidget(
                          label: 'Mail host',
                          readOnly: false,
                          required: false,
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(width: 12.0)),
                ),
                wrapWithModel(
                  model: _model.labelInputModel4,
                  updateCallback: () => safeSetState(() {}),
                  child: const LabelInputWidget(
                    label: 'Mail username',
                    readOnly: false,
                    required: false,
                  ),
                ),
                wrapWithModel(
                  model: _model.labelInputModel5,
                  updateCallback: () => safeSetState(() {}),
                  child: const LabelInputWidget(
                    label: 'Mail password',
                    readOnly: false,
                    required: false,
                  ),
                ),
                wrapWithModel(
                  model: _model.labelInputModel6,
                  updateCallback: () => safeSetState(() {}),
                  child: const LabelInputWidget(
                    label: 'Mail encryption',
                    readOnly: false,
                    required: false,
                  ),
                ),
                wrapWithModel(
                  model: _model.labelInputModel7,
                  updateCallback: () => safeSetState(() {}),
                  child: const LabelInputWidget(
                    label: 'Mail from address',
                    readOnly: false,
                    required: false,
                  ),
                ),
                wrapWithModel(
                  model: _model.labelInputModel8,
                  updateCallback: () => safeSetState(() {}),
                  child: const LabelInputWidget(
                    label: 'Mail from name',
                    readOnly: false,
                    required: false,
                  ),
                ),
                wrapWithModel(
                  model: _model.labelInputModel9,
                  updateCallback: () => safeSetState(() {}),
                  child: const LabelInputWidget(
                    label: 'Incoming mail',
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
