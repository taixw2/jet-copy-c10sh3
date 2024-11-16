import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'w_user_info_item_model.dart';
export 'w_user_info_item_model.dart';

class WUserInfoItemWidget extends StatefulWidget {
  const WUserInfoItemWidget({
    super.key,
    required this.label,
    String? vvalue,
  }) : vvalue = vvalue ?? ' ';

  final String? label;
  final String vvalue;

  @override
  State<WUserInfoItemWidget> createState() => _WUserInfoItemWidgetState();
}

class _WUserInfoItemWidgetState extends State<WUserInfoItemWidget> {
  late WUserInfoItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WUserInfoItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.0,
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            valueOrDefault<String>(
              widget.label,
              'label',
            ),
            style: FlutterFlowTheme.of(context).labelSmall.override(
                  fontFamily: 'SF Pro Display',
                  letterSpacing: 0.0,
                  useGoogleFonts: false,
                ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                widget.vvalue,
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'SF Pro Display',
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 16.0,
              ),
            ].divide(const SizedBox(width: 8.0)),
          ),
        ],
      ),
    );
  }
}
