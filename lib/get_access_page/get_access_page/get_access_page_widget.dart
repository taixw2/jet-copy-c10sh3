import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/weight/label_input/label_input_widget.dart';
import 'package:flutter/material.dart';
import 'get_access_page_model.dart';
export 'get_access_page_model.dart';

class GetAccessPageWidget extends StatefulWidget {
  const GetAccessPageWidget({super.key});

  @override
  State<GetAccessPageWidget> createState() => _GetAccessPageWidgetState();
}

class _GetAccessPageWidgetState extends State<GetAccessPageWidget> {
  late GetAccessPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GetAccessPageModel());
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
              context.safePop();
            },
          ),
          title: Text(
            FFLocalizations.of(context).getText(
              'nck3lg0k' /* Get access */,
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
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 48.0,
                          decoration: const BoxDecoration(),
                          child: Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '1w9r5zz5' /* Main information */,
                              ),
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color: Colors.white,
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.labelInputModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: LabelInputWidget(
                                label: FFLocalizations.of(context).getText(
                                  '0r5rfix2' /* Full name */,
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
                                  '0sb6pqhq' /* Phone */,
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
                                  'moz5crbb' /* Email */,
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
                                  'q1u4tvs2' /* Postal code */,
                                ),
                                readOnly: false,
                                required: false,
                              ),
                            ),
                          ].divide(const SizedBox(height: 16.0)),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 48.0,
                          decoration: const BoxDecoration(),
                          child: Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '7vf0m1b3' /* Package information */,
                              ),
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'SF Pro Display',
                                    color: Colors.white,
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: wrapWithModel(
                                model: _model.labelInputModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: LabelInputWidget(
                                  label: FFLocalizations.of(context).getText(
                                    '39v9vsvt' /* Volume */,
                                  ),
                                  readOnly: false,
                                  required: false,
                                ),
                              ),
                            ),
                            wrapWithModel(
                              model: _model.labelInputModel6,
                              updateCallback: () => safeSetState(() {}),
                              child: LabelInputWidget(
                                label: FFLocalizations.of(context).getText(
                                  'u4f2i7qk' /* Weight */,
                                ),
                                readOnly: false,
                                required: false,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    context.goNamed('HomePage');
                  },
                  text: FFLocalizations.of(context).getText(
                    '0z93b7va' /* Submit */,
                  ),
                  options: FFButtonOptions(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 46.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'SF Pro Display',
                          color: Colors.white,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w300,
                          useGoogleFonts: false,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(24.0),
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
