import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'home_balance_item_model.dart';
export 'home_balance_item_model.dart';

class HomeBalanceItemWidget extends StatefulWidget {
  const HomeBalanceItemWidget({
    super.key,
    String? amount,
    String? label,
  })  : amount = amount ?? '0',
        label = label ?? 'label';

  final String amount;
  final String label;

  @override
  State<HomeBalanceItemWidget> createState() => _HomeBalanceItemWidgetState();
}

class _HomeBalanceItemWidgetState extends State<HomeBalanceItemWidget> {
  late HomeBalanceItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeBalanceItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.amount,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'SF Pro Display',
                color: FlutterFlowTheme.of(context).info,
                fontSize: 17.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
                useGoogleFonts: false,
              ),
        ),
        AutoSizeText(
          widget.label,
          textAlign: TextAlign.center,
          minFontSize: 8.0,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'SF Pro Display',
                color: FlutterFlowTheme.of(context).info,
                fontSize: 12.0,
                letterSpacing: 0.0,
                useGoogleFonts: false,
              ),
        ),
      ].divide(const SizedBox(height: 6.0)),
    );
  }
}
