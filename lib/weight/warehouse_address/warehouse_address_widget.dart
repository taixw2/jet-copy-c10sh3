import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'warehouse_address_model.dart';
export 'warehouse_address_model.dart';

class WarehouseAddressWidget extends StatefulWidget {
  const WarehouseAddressWidget({super.key});

  @override
  State<WarehouseAddressWidget> createState() => _WarehouseAddressWidgetState();
}

class _WarehouseAddressWidgetState extends State<WarehouseAddressWidget> {
  late WarehouseAddressModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WarehouseAddressModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {
          _model.textController?.text = FFLocalizations.of(context).getText(
            'ghxzjnai' /* 广州市白云区石门街石沙路石井工业区三横路1号G1 -102 ... */,
          );
        }));
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
                '7t7lj3n6' /* 仓库地址 */,
              ),
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    fontFamily: 'SF Pro Display',
                    letterSpacing: 0.0,
                    useGoogleFonts: false,
                  ),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 1.0,
              child: TextFormField(
                controller: _model.textController,
                focusNode: _model.textFieldFocusNode,
                autofocus: false,
                obscureText: false,
                decoration: InputDecoration(
                  isDense: true,
                  labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'SF Pro Display',
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                  hintText: FFLocalizations.of(context).getText(
                    'ay8z84f3' /* TextField */,
                  ),
                  hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'SF Pro Display',
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).error,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).thirdBackground,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'SF Pro Display',
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                      lineHeight: 1.6,
                    ),
                maxLines: 5,
                minLines: 3,
                cursorColor: FlutterFlowTheme.of(context).primaryText,
                validator: _model.textControllerValidator.asValidator(context),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: FFLocalizations.of(context).getText(
                      'ip9rxltn' /* 分享 */,
                    ),
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'SF Pro Display',
                                color: FlutterFlowTheme.of(context).primary,
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                ),
                Expanded(
                  child: FFButtonWidget(
                    onPressed: () async {
                      await Clipboard.setData(const ClipboardData(
                          text:
                              '广州市白云区石门街石沙路石井工业区三横路1号G1 -102 .代码JL8888 陈生  123456788 '));
                    },
                    text: FFLocalizations.of(context).getText(
                      '5aorvhyd' /* 复制 */,
                    ),
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primaryText,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'SF Pro Display',
                                color: Colors.white,
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                ),
              ].divide(const SizedBox(width: 12.0)),
            ),
          ].divide(const SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
