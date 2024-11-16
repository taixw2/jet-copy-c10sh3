import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/recent_news_page/news_item/news_item_widget.dart';
import 'package:flutter/material.dart';
import 'recent_news_page_model.dart';
export 'recent_news_page_model.dart';

class RecentNewsPageWidget extends StatefulWidget {
  const RecentNewsPageWidget({super.key});

  @override
  State<RecentNewsPageWidget> createState() => _RecentNewsPageWidgetState();
}

class _RecentNewsPageWidgetState extends State<RecentNewsPageWidget> {
  late RecentNewsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecentNewsPageModel());
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
              'octmilq4' /* Recent news */,
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
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.newsItemModel1,
                    updateCallback: () => safeSetState(() {}),
                    child: const NewsItemWidget(),
                  ),
                  wrapWithModel(
                    model: _model.newsItemModel2,
                    updateCallback: () => safeSetState(() {}),
                    child: const NewsItemWidget(),
                  ),
                  wrapWithModel(
                    model: _model.newsItemModel3,
                    updateCallback: () => safeSetState(() {}),
                    child: const NewsItemWidget(),
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
