import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'label_input_model.dart';
export 'label_input_model.dart';

class LabelInputWidget extends StatefulWidget {
  const LabelInputWidget({
    super.key,
    required this.label,
    bool? readOnly,
    int? maxLines,
    this.initialValue,
    bool? required,
  })  : readOnly = readOnly ?? false,
        maxLines = maxLines ?? 1,
        required = required ?? false;

  final String? label;
  final bool readOnly;
  final int maxLines;
  final String? initialValue;
  final bool required;

  @override
  State<LabelInputWidget> createState() => _LabelInputWidgetState();
}

class _LabelInputWidgetState extends State<LabelInputWidget> {
  late LabelInputModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LabelInputModel());

    _model.textController ??= TextEditingController(text: widget.initialValue);
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                valueOrDefault<String>(
                  widget.label,
                  'label',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'SF Pro Display',
                      color: const Color(0xFFC6C6C6),
                      fontSize: 13.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
              if (widget.required)
                Text(
                  FFLocalizations.of(context).getText(
                    'uuuhc08c' /* * */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'SF Pro Display',
                        color: FlutterFlowTheme.of(context).error,
                        fontSize: 13.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                shape: BoxShape.rectangle,
              ),
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 1.0,
                child: TextFormField(
                  controller: _model.textController,
                  focusNode: _model.textFieldFocusNode,
                  autofocus: false,
                  readOnly: widget.readOnly,
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: false,
                    labelStyle:
                        FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SF Pro Display',
                              color: Colors.white,
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                    alignLabelWithHint: false,
                    hintStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'SF Pro Display',
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    filled: true,
                    fillColor: const Color(0xFF1B1B1B),
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'SF Pro Display',
                        color: Colors.white,
                        fontSize: 15.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                  maxLines: widget.maxLines,
                  minLines: 1,
                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                  validator:
                      _model.textControllerValidator.asValidator(context),
                ),
              ),
            ),
          ),
        ].divide(const SizedBox(height: 6.0)),
      ),
    );
  }
}
