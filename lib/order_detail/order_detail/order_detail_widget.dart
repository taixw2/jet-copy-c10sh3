import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/weight/edit_order_bottom_sheet/edit_order_bottom_sheet_widget.dart';
import '/weight/label_input/label_input_widget.dart';
import '/weight/order_item/order_item_widget.dart';
import '/weight/title/title_widget.dart';
import 'package:flutter/material.dart';
import 'order_detail_model.dart';
export 'order_detail_model.dart';

class OrderDetailWidget extends StatefulWidget {
  const OrderDetailWidget({super.key});

  @override
  State<OrderDetailWidget> createState() => _OrderDetailWidgetState();
}

class _OrderDetailWidgetState extends State<OrderDetailWidget> {
  late OrderDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderDetailModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {
          _model.textController?.text = FFLocalizations.of(context).getText(
            '7ymja05v' /* Parcel already arrived at carg... */,
          );
        }));
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
                  '6d2avfdq' /* OrderDetail */,
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
                onPressed: () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return GestureDetector(
                        onTap: () => FocusScope.of(context).unfocus(),
                        child: Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: const SizedBox(
                            height: 200.0,
                            child: EditOrderBottomSheetWidget(),
                          ),
                        ),
                      );
                    },
                  ).then((value) => safeSetState(() {}));
                },
                text: FFLocalizations.of(context).getText(
                  'c9szrmes' /* Edit */,
                ),
                options: FFButtonOptions(
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: const Color(0x00FF7D00),
                  textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'SF Pro Display',
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.orderItemModel,
                    updateCallback: () => safeSetState(() {}),
                    child: const OrderItemWidget(),
                  ),
                  wrapWithModel(
                    model: _model.titleModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: TitleWidget(
                      title: FFLocalizations.of(context).getText(
                        '0q46exoh' /* Package infomation */,
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
                          model: _model.labelInputModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: LabelInputWidget(
                            label: FFLocalizations.of(context).getText(
                              '3vtoo1jq' /* Package code */,
                            ),
                            readOnly: true,
                            initialValue: 'JL-4443-0894-2',
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
                              'kfctcfgk' /* Client phone number */,
                            ),
                            readOnly: true,
                            initialValue: '+86 13317221667',
                            required: false,
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(width: 8.0)),
                  ),
                  wrapWithModel(
                    model: _model.labelInputModel3,
                    updateCallback: () => safeSetState(() {}),
                    child: LabelInputWidget(
                      label: FFLocalizations.of(context).getText(
                        '6cu6vavg' /* Address */,
                      ),
                      readOnly: true,
                      maxLines: 2,
                      initialValue: '广州市白云区石门街石沙路石井工业区三横路1号G1 -102 .代码JL8888 ',
                      required: false,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.labelInputModel4,
                    updateCallback: () => safeSetState(() {}),
                    child: LabelInputWidget(
                      label: FFLocalizations.of(context).getText(
                        'rjxqzw9x' /* Product Category */,
                      ),
                      readOnly: true,
                      initialValue: 'Clothes (12-14 delivery days)',
                      required: false,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.titleModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: TitleWidget(
                      title: FFLocalizations.of(context).getText(
                        'u3aytnwr' /* Package list */,
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
                              'ms9931jy' /* Volume(m3) */,
                            ),
                            readOnly: true,
                            initialValue: '0.33',
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
                              'deqfins3' /* Dimension(cm) */,
                            ),
                            readOnly: true,
                            initialValue: '0.33',
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
                              'i453n80w' /* Weight(kg) */,
                            ),
                            readOnly: true,
                            initialValue: '0.91',
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
                              'n64a28pc' /* Amount of places */,
                            ),
                            readOnly: true,
                            initialValue: ' ',
                            required: false,
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(width: 8.0)),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          'b82qyd4o' /* Packaging Type */,
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
                                'mjjv5lmr' /* Option 1 */,
                              ),
                              FFLocalizations.of(context).getText(
                                '78imepji' /* Option 2 */,
                              ),
                              FFLocalizations.of(context).getText(
                                'rvacox7r' /* Option 3 */,
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
                        '5fbiw5k1' /* Subtotal */,
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
                          model: _model.labelInputModel9,
                          updateCallback: () => safeSetState(() {}),
                          child: LabelInputWidget(
                            label: FFLocalizations.of(context).getText(
                              'u8zc7d14' /* Amount by kg */,
                            ),
                            readOnly: true,
                            initialValue: '0.91',
                            required: false,
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.labelInputModel10,
                          updateCallback: () => safeSetState(() {}),
                          child: LabelInputWidget(
                            label: FFLocalizations.of(context).getText(
                              'bx689zk7' /* Amount by weight */,
                            ),
                            readOnly: true,
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
                          model: _model.labelInputModel11,
                          updateCallback: () => safeSetState(() {}),
                          child: LabelInputWidget(
                            label: FFLocalizations.of(context).getText(
                              '2j81yl7n' /* Insurance */,
                            ),
                            readOnly: true,
                            initialValue: '0.91',
                            required: false,
                          ),
                        ),
                      ),
                      Expanded(
                        child: wrapWithModel(
                          model: _model.labelInputModel12,
                          updateCallback: () => safeSetState(() {}),
                          child: LabelInputWidget(
                            label: FFLocalizations.of(context).getText(
                              'm0cud40z' /* Package costs */,
                            ),
                            readOnly: true,
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
                          model: _model.labelInputModel13,
                          updateCallback: () => safeSetState(() {}),
                          child: LabelInputWidget(
                            label: FFLocalizations.of(context).getText(
                              'pbzy2jxq' /* Loadunload costs */,
                            ),
                            readOnly: true,
                            initialValue: '0.91',
                            required: false,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Opacity(
                          opacity: 0.0,
                          child: wrapWithModel(
                            model: _model.labelInputModel14,
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
                    model: _model.labelInputModel15,
                    updateCallback: () => safeSetState(() {}),
                    child: LabelInputWidget(
                      label: FFLocalizations.of(context).getText(
                        'xb0o5klb' /* Total Sum */,
                      ),
                      readOnly: true,
                      initialValue: '230 \$',
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
                            '34b68ugu' /* Comments */,
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
                              '6tzvvtgj' /* TextField */,
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
                            '6tiy4v9g' /* Gallery */,
                          ),
                          actionLabel: ' ',
                          showAction: false,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://picsum.photos/seed/107/600',
                          width: 131.0,
                          height: 131.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ].divide(const SizedBox(height: 4.0)),
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
