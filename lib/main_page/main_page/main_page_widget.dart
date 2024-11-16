import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home_page/home_page_s/home_page_s_widget.dart';
import '/order_page/order_pages/order_pages_widget.dart';
import '/profile_page/profile_pages/profile_pages_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'main_page_model.dart';
export 'main_page_model.dart';

class MainPageWidget extends StatefulWidget {
  const MainPageWidget({super.key});

  @override
  State<MainPageWidget> createState() => _MainPageWidgetState();
}

class _MainPageWidgetState extends State<MainPageWidget>
    with TickerProviderStateMixin {
  late MainPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainPageModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
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
        body: SafeArea(
          top: true,
          child: Column(
            children: [
              Expanded(
                child: TabBarView(
                  controller: _model.tabBarController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    KeepAliveWidgetWrapper(
                      builder: (context) => wrapWithModel(
                        model: _model.homePageSModel,
                        updateCallback: () => safeSetState(() {}),
                        child: const HomePageSWidget(),
                      ),
                    ),
                    KeepAliveWidgetWrapper(
                      builder: (context) => wrapWithModel(
                        model: _model.orderPagesModel,
                        updateCallback: () => safeSetState(() {}),
                        child: const OrderPagesWidget(),
                      ),
                    ),
                    KeepAliveWidgetWrapper(
                      builder: (context) => const Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [],
                      ),
                    ),
                    KeepAliveWidgetWrapper(
                      builder: (context) => wrapWithModel(
                        model: _model.profilePagesModel,
                        updateCallback: () => safeSetState(() {}),
                        child: const ProfilePagesWidget(),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const Alignment(0.0, 0),
                child: TabBar(
                  labelColor: FlutterFlowTheme.of(context).primaryText,
                  unselectedLabelColor:
                      FlutterFlowTheme.of(context).secondaryText,
                  labelStyle: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'SF Pro Display',
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                  unselectedLabelStyle:
                      FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'SF Pro Display',
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                  indicatorColor: const Color(0x00111111),
                  indicatorWeight: 0.0,
                  tabs: [
                    Tab(
                      text: FFLocalizations.of(context).getText(
                        '7rfhpi9h' /* Home */,
                      ),
                      icon: const FaIcon(
                        FontAwesomeIcons.home,
                      ),
                    ),
                    Tab(
                      text: FFLocalizations.of(context).getText(
                        'qvjxhfem' /* Order */,
                      ),
                      icon: const FaIcon(
                        FontAwesomeIcons.clipboardList,
                      ),
                    ),
                    Tab(
                      text: FFLocalizations.of(context).getText(
                        'rayhqpbb' /* Support */,
                      ),
                      icon: const FaIcon(
                        FontAwesomeIcons.solidCommentDots,
                      ),
                    ),
                    Tab(
                      text: FFLocalizations.of(context).getText(
                        't273znpe' /* Profile */,
                      ),
                      icon: const FaIcon(
                        FontAwesomeIcons.userAlt,
                      ),
                    ),
                  ],
                  controller: _model.tabBarController,
                  onTap: (i) async {
                    [() async {}, () async {}, () async {}, () async {}][i]();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
