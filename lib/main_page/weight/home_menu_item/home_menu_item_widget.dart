import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'home_menu_item_model.dart';
export 'home_menu_item_model.dart';

class HomeMenuItemWidget extends StatefulWidget {
  const HomeMenuItemWidget({
    super.key,
    required this.icon,
    required this.label,
  });

  final Widget? icon;
  final String? label;

  @override
  State<HomeMenuItemWidget> createState() => _HomeMenuItemWidgetState();
}

class _HomeMenuItemWidgetState extends State<HomeMenuItemWidget> {
  late HomeMenuItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeMenuItemModel());
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
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
          child: ClipOval(
            child: Container(
              width: 60.0,
              height: 60.0,
              decoration: const BoxDecoration(
                color: Color(0xFF1B1B1B),
                shape: BoxShape.circle,
              ),
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: widget.icon!,
            ),
          ),
        ),
        Text(
          valueOrDefault<String>(
            widget.label,
            'label',
          ),
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'SF Pro Display',
                color: FlutterFlowTheme.of(context).info,
                letterSpacing: 0.0,
                useGoogleFonts: false,
              ),
        ),
      ],
    );
  }
}
