import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/auth/custom_auth/custom_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  JetCopyAuthUser? initialUser;
  JetCopyAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(JetCopyAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const MainPageWidget() : const LoginPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const MainPageWidget() : const LoginPageWidget(),
        ),
        FFRoute(
          name: 'GuidePage',
          path: '/guidePage',
          builder: (context, params) => const GuidePageWidget(),
        ),
        FFRoute(
          name: 'LoginPage',
          path: '/loginPage',
          builder: (context, params) => const LoginPageWidget(),
        ),
        FFRoute(
          name: 'GetAccessPage',
          path: '/getAccessPage',
          builder: (context, params) => const GetAccessPageWidget(),
        ),
        FFRoute(
          name: 'MainPage',
          path: '/mainPage',
          builder: (context, params) => const MainPageWidget(),
        ),
        FFRoute(
          name: 'WarehouseLocationPage',
          path: '/warehouseLocationPage',
          builder: (context, params) => const WarehouseLocationPageWidget(),
        ),
        FFRoute(
          name: 'CalculatorPage',
          path: '/calculatorPage',
          builder: (context, params) => const CalculatorPageWidget(),
        ),
        FFRoute(
          name: 'NotificationPage',
          path: '/notificationPage',
          builder: (context, params) => const NotificationPageWidget(),
        ),
        FFRoute(
          name: 'RecentNewsPage',
          path: '/recentNewsPage',
          builder: (context, params) => const RecentNewsPageWidget(),
        ),
        FFRoute(
          name: 'BanlancePage',
          path: '/banlancePage',
          builder: (context, params) => const BanlancePageWidget(),
        ),
        FFRoute(
          name: 'BanlanceEditPage',
          path: '/banlanceEditPage',
          builder: (context, params) => const BanlanceEditPageWidget(),
        ),
        FFRoute(
          name: 'OrderDetail',
          path: '/orderDetail',
          builder: (context, params) => const OrderDetailWidget(),
        ),
        FFRoute(
          name: 'CreateOrder',
          path: '/createOrder',
          builder: (context, params) => const CreateOrderWidget(),
        ),
        FFRoute(
          name: 'CreateUserPage',
          path: '/createUserPage',
          builder: (context, params) => const CreateUserPageWidget(),
        ),
        FFRoute(
          name: 'AllUserPage',
          path: '/allUserPage',
          builder: (context, params) => const AllUserPageWidget(),
        ),
        FFRoute(
          name: 'UserInfoPage',
          path: '/userInfoPage',
          builder: (context, params) => const UserInfoPageWidget(),
        ),
        FFRoute(
          name: 'LoginUserInfoPage',
          path: '/loginUserInfoPage',
          builder: (context, params) => const LoginUserInfoPageWidget(),
        ),
        FFRoute(
          name: 'EditUserFieldPage',
          path: '/editUserFieldPage',
          builder: (context, params) => EditUserFieldPageWidget(
            title: params.getParam(
              'title',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'GalleryPage',
          path: '/galleryPage',
          builder: (context, params) => const GalleryPageWidget(),
        ),
        FFRoute(
          name: 'SelectLanguagePage',
          path: '/selectLanguagePage',
          builder: (context, params) => const SelectLanguagePageWidget(),
        ),
        FFRoute(
          name: 'AllOrderPage',
          path: '/allOrderPage',
          builder: (context, params) => const AllOrderPageWidget(),
        ),
        FFRoute(
          name: 'CustomClearance',
          path: '/customClearance',
          builder: (context, params) => const CustomClearanceWidget(),
        ),
        FFRoute(
          name: 'CreateCustomClearance',
          path: '/createCustomClearance',
          builder: (context, params) => const CreateCustomClearanceWidget(),
        ),
        FFRoute(
          name: 'SettingsPage',
          path: '/settingsPage',
          builder: (context, params) => const SettingsPageWidget(),
        ),
        FFRoute(
          name: 'CalculatorSettingsPage',
          path: '/calculatorSettingsPage',
          builder: (context, params) => const CalculatorSettingsPageWidget(),
        ),
        FFRoute(
          name: 'CreateCalculatorSettingsPage',
          path: '/createCalculatorSettingsPage',
          builder: (context, params) => const CreateCalculatorSettingsPageWidget(),
        ),
        FFRoute(
          name: 'ExchangeRateSettingsPage',
          path: '/exchangeRateSettingsPage',
          builder: (context, params) => const ExchangeRateSettingsPageWidget(),
        ),
        FFRoute(
          name: 'CreateExchangRateSettingsPage',
          path: '/createExchangRateSettingsPage',
          builder: (context, params) => const CreateExchangRateSettingsPageWidget(),
        ),
        FFRoute(
          name: 'WalletSettingsPage',
          path: '/walletSettingsPage',
          builder: (context, params) => const WalletSettingsPageWidget(),
        ),
        FFRoute(
          name: 'PreviewWalletPage',
          path: '/previewWalletPage',
          builder: (context, params) => const PreviewWalletPageWidget(),
        ),
        FFRoute(
          name: 'PackagingTypeSettingsPage',
          path: '/packagingTypeSettingsPage',
          builder: (context, params) => const PackagingTypeSettingsPageWidget(),
        ),
        FFRoute(
          name: 'CreatePackagingTypeSettingsPage',
          path: '/createPackagingTypeSettingsPage',
          builder: (context, params) => const CreatePackagingTypeSettingsPageWidget(),
        ),
        FFRoute(
          name: 'CouponsettingsPage',
          path: '/couponsettingsPage',
          builder: (context, params) => const CouponsettingsPageWidget(),
        ),
        FFRoute(
          name: 'CreateCouponsettingsPage',
          path: '/createCouponsettingsPage',
          builder: (context, params) => const CreateCouponsettingsPageWidget(),
        ),
        FFRoute(
          name: 'UserPermissionSettingsPage',
          path: '/userPermissionSettingsPage',
          builder: (context, params) => const UserPermissionSettingsPageWidget(),
        ),
        FFRoute(
          name: 'CreateUserPermissionSettingsPage',
          path: '/createUserPermissionSettingsPage',
          builder: (context, params) =>
              const CreateUserPermissionSettingsPageWidget(),
        ),
        FFRoute(
          name: 'WarehouseLocationSettingsPage',
          path: '/warehouseLocationSettingsPage',
          builder: (context, params) => const WarehouseLocationSettingsPageWidget(),
        ),
        FFRoute(
          name: 'CreateWarehouseLocationSettingsPage',
          path: '/createWarehouseLocationSettingsPage',
          builder: (context, params) =>
              const CreateWarehouseLocationSettingsPageWidget(),
        ),
        FFRoute(
          name: 'EmailSettingsPage',
          path: '/emailSettingsPage',
          builder: (context, params) => const EmailSettingsPageWidget(),
        ),
        FFRoute(
          name: 'SecuritySettingsPage',
          path: '/securitySettingsPage',
          builder: (context, params) => const SecuritySettingsPageWidget(),
        ),
        FFRoute(
          name: 'HCaptchaPage',
          path: '/hCaptchaPage',
          builder: (context, params) => const HCaptchaPageWidget(),
        ),
        FFRoute(
          name: 'UserLoginAttemptCountsPage',
          path: '/userLoginAttemptCountsPage',
          builder: (context, params) => const UserLoginAttemptCountsPageWidget(),
        ),
        FFRoute(
          name: 'NewsSettingsPage',
          path: '/newsSettingsPage',
          builder: (context, params) => const NewsSettingsPageWidget(),
        ),
        FFRoute(
          name: 'AddPhotosPage',
          path: '/addPhotosPage',
          builder: (context, params) => const AddPhotosPageWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => const HomePageWidget(),
        ),
        FFRoute(
          name: 'OrderPage',
          path: '/orderPage',
          builder: (context, params) => const OrderPageWidget(),
        ),
        FFRoute(
          name: 'ProfilePage',
          path: '/profilePage',
          builder: (context, params) => const ProfilePageWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/loginPage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  child: Center(
                    child: Image.asset(
                      'assets/images/Jetlines_Image_18_(1).png',
                      width: 360.0,
                      height: 360.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
