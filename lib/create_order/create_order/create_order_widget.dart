import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/weight/label_input/label_input_widget.dart';
import '/weight/title/title_widget.dart';
import 'package:flutter/material.dart';
import 'create_order_model.dart';
export 'create_order_model.dart';

class CreateOrderWidget extends StatefulWidget {
  const CreateOrderWidget({super.key});

  @override
  State<CreateOrderWidget> createState() => _CreateOrderWidgetState();
}

class _CreateOrderWidgetState extends State<CreateOrderWidget> {
  late CreateOrderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateOrderModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
                  's7c73swu' /* Create order */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'SF Pro Display',
                      color: Colors.white,
                      fontSize: 17.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
              Opacity(
                opacity: 0.0,
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: FFLocalizations.of(context).getText(
                    'zptg6bdx' /* Edit */,
                  ),
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0x00FF7D00),
                    textStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'SF Pro Display',
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.titleModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: const TitleWidget(
                      title: 'Client information',
                      actionLabel: ' ',
                      showAction: false,
                    ),
                  ),
                  Expanded(
                    child: wrapWithModel(
                      model: _model.labelInputModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: LabelInputWidget(
                        label: FFLocalizations.of(context).getText(
                          'zrhs17eo' /* Package code */,
                        ),
                        readOnly: false,
                        required: false,
                      ),
                    ),
                  ),
                  Expanded(
                    child: wrapWithModel(
                      model: _model.labelInputModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: LabelInputWidget(
                        label: FFLocalizations.of(context).getText(
                          'zpyr0l33' /* Client phone number */,
                        ),
                        readOnly: false,
                        required: false,
                      ),
                    ),
                  ),
                  Expanded(
                    child: wrapWithModel(
                      model: _model.labelInputModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: LabelInputWidget(
                        label: FFLocalizations.of(context).getText(
                          'qwdaw7hv' /* Email */,
                        ),
                        readOnly: false,
                        required: false,
                      ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.labelInputModel4,
                    updateCallback: () => safeSetState(() {}),
                    child: LabelInputWidget(
                      label: FFLocalizations.of(context).getText(
                        'zgupirky' /* Address */,
                      ),
                      readOnly: true,
                      maxLines: 2,
                      required: false,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.titleModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: TitleWidget(
                      title: FFLocalizations.of(context).getText(
                        'qr59qi6p' /* Package list */,
                      ),
                      actionLabel: ' ',
                      showAction: false,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: wrapWithModel(
                          model: _model.labelInputModel5,
                          updateCallback: () => safeSetState(() {}),
                          child: LabelInputWidget(
                            label: FFLocalizations.of(context).getText(
                              'rhbk5it1' /* Volume(m3) */,
                            ),
                            readOnly: false,
                            required: false,
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.labelInputModel6,
                          updateCallback: () => safeSetState(() {}),
                          child: LabelInputWidget(
                            label: FFLocalizations.of(context).getText(
                              'y4sci7hl' /* Dimension(cm) */,
                            ),
                            readOnly: false,
                            required: false,
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(width: 8.0)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: wrapWithModel(
                          model: _model.labelInputModel7,
                          updateCallback: () => safeSetState(() {}),
                          child: LabelInputWidget(
                            label: FFLocalizations.of(context).getText(
                              'esgxi4l4' /* Weight(kg) */,
                            ),
                            readOnly: false,
                            required: false,
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.labelInputModel8,
                          updateCallback: () => safeSetState(() {}),
                          child: LabelInputWidget(
                            label: FFLocalizations.of(context).getText(
                              'gtr9hq9l' /* Amount of places */,
                            ),
                            readOnly: false,
                            initialValue: ' ',
                            required: false,
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(width: 8.0)),
                  ),
                  wrapWithModel(
                    model: _model.labelInputModel9,
                    updateCallback: () => safeSetState(() {}),
                    child: LabelInputWidget(
                      label: FFLocalizations.of(context).getText(
                        'r3r4bvoq' /* Product Category */,
                      ),
                      readOnly: false,
                      required: false,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'whq2yxdv' /* Packaging Type */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'SF Pro Display',
                              color: const Color(0xFFC6C6C6),
                              fontSize: 13.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.dropDownValueController ??=
                                FormFieldController<String>(null),
                            options: [
                              FFLocalizations.of(context).getText(
                                'vvziz61l' /* Option 1 */,
                              ),
                              FFLocalizations.of(context).getText(
                                '2e63sel0' /* Option 2 */,
                              ),
                              FFLocalizations.of(context).getText(
                                '2f31wl06' /* Option 3 */,
                              )
                            ],
                            onChanged: (val) =>
                                safeSetState(() => _model.dropDownValue = val),
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 44.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'SF Pro Display',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor: Colors.transparent,
                            borderWidth: 0.0,
                            borderRadius: 8.0,
                            margin: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            hidesUnderline: true,
                            isOverButton: false,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(height: 6.0)),
                  ),
                  wrapWithModel(
                    model: _model.titleModel3,
                    updateCallback: () => safeSetState(() {}),
                    child: TitleWidget(
                      title: FFLocalizations.of(context).getText(
                        'zrksh3rc' /* Subtotal */,
                      ),
                      actionLabel: ' ',
                      showAction: false,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: wrapWithModel(
                          model: _model.labelInputModel10,
                          updateCallback: () => safeSetState(() {}),
                          child: LabelInputWidget(
                            label: FFLocalizations.of(context).getText(
                              '8dve3e9k' /* Amount by kg */,
                            ),
                            readOnly: false,
                            required: false,
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.labelInputModel11,
                          updateCallback: () => safeSetState(() {}),
                          child: LabelInputWidget(
                            label: FFLocalizations.of(context).getText(
                              'dsjotz5v' /* Amount by weight */,
                            ),
                            readOnly: false,
                            initialValue: ' ',
                            required: false,
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(width: 8.0)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: wrapWithModel(
                          model: _model.labelInputModel12,
                          updateCallback: () => safeSetState(() {}),
                          child: LabelInputWidget(
                            label: FFLocalizations.of(context).getText(
                              'wip1a7gi' /* Insurance */,
                            ),
                            readOnly: false,
                            required: false,
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.labelInputModel13,
                          updateCallback: () => safeSetState(() {}),
                          child: LabelInputWidget(
                            label: FFLocalizations.of(context).getText(
                              '0qvhhk0t' /* Package costs */,
                            ),
                            readOnly: false,
                            initialValue: ' ',
                            required: false,
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(width: 8.0)),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: wrapWithModel(
                          model: _model.labelInputModel14,
                          updateCallback: () => safeSetState(() {}),
                          child: LabelInputWidget(
                            label: FFLocalizations.of(context).getText(
                              'ar1ixqxj' /* Loadunload costs */,
                            ),
                            readOnly: false,
                            required: false,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Opacity(
                          opacity: 0.0,
                          child: wrapWithModel(
                            model: _model.labelInputModel15,
                            updateCallback: () => safeSetState(() {}),
                            child: const LabelInputWidget(
                              label: 'Package costs',
                              readOnly: true,
                              initialValue: ' ',
                            ),
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(width: 8.0)),
                  ),
                  wrapWithModel(
                    model: _model.labelInputModel16,
                    updateCallback: () => safeSetState(() {}),
                    child: LabelInputWidget(
                      label: FFLocalizations.of(context).getText(
                        'z7li0due' /* Total Sum */,
                      ),
                      readOnly: true,
                      required: false,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      wrapWithModel(
                        model: _model.titleModel4,
                        updateCallback: () => safeSetState(() {}),
                        child: TitleWidget(
                          title: FFLocalizations.of(context).getText(
                            '21dsqwlf' /* Comments */,
                          ),
                          actionLabel: ' ',
                          showAction: false,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        child: TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          autofocus: false,
                          readOnly: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            labelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'SF Pro Display',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                            hintText: FFLocalizations.of(context).getText(
                              'p7tlgayk' /* TextField */,
                            ),
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
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
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          style:
                              FlutterFlowTheme.of(context).labelSmall.override(
                                    fontFamily: 'SF Pro Display',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                          maxLines: 4,
                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ].divide(const SizedBox(height: 4.0)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      wrapWithModel(
                        model: _model.titleModel5,
                        updateCallback: () => safeSetState(() {}),
                        child: TitleWidget(
                          title: FFLocalizations.of(context).getText(
                            '7hwqyns5' /* Gallery */,
                          ),
                          actionLabel: ' ',
                          showAction: false,
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderRadius: 8.0,
                        buttonSize: 110.0,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        icon: const Icon(
                          Icons.add,
                          color: Color(0xFF2E2E2E),
                          size: 48.0,
                        ),
                        onPressed: () async {
                          final selectedMedia =
                              await selectMediaWithSourceBottomSheet(
                            context: context,
                            imageQuality: 100,
                            allowPhoto: true,
                          );
                          if (selectedMedia != null &&
                              selectedMedia.every((m) =>
                                  validateFileFormat(m.storagePath, context))) {
                            safeSetState(() => _model.isDataUploading = true);
                            var selectedUploadedFiles = <FFUploadedFile>[];

                            try {
                              selectedUploadedFiles = selectedMedia
                                  .map((m) => FFUploadedFile(
                                        name: m.storagePath.split('/').last,
                                        bytes: m.bytes,
                                        height: m.dimensions?.height,
                                        width: m.dimensions?.width,
                                        blurHash: m.blurHash,
                                      ))
                                  .toList();
                            } finally {
                              _model.isDataUploading = false;
                            }
                            if (selectedUploadedFiles.length ==
                                selectedMedia.length) {
                              safeSetState(() {
                                _model.uploadedLocalFile =
                                    selectedUploadedFiles.first;
                              });
                            } else {
                              safeSetState(() {});
                              return;
                            }
                          }
                        },
                      ),
                    ].divide(const SizedBox(height: 4.0)),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.safePop();
                      },
                      text: FFLocalizations.of(context).getText(
                        '0n8qfafl' /* Confirm and send */,
                      ),
                      options: FFButtonOptions(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
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
                  FFButtonWidget(
                    onPressed: () async {
                      context.safePop();
                    },
                    text: FFLocalizations.of(context).getText(
                      'seyxx9yn' /* Save as draft */,
                    ),
                    options: FFButtonOptions(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0x00FF7D00),
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
                ].divide(const SizedBox(height: 16.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
