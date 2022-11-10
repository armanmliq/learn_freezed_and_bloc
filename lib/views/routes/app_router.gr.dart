// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../authentication/login_page.dart' as _i1;
import '../bank_account/bank_accounts_view.dart' as _i3;
import '../main.dart' as _i2;
import 'router_guard.dart' as _i6;

class AppRouter extends _i4.RootStackRouter {
  AppRouter(
      {_i5.GlobalKey<_i5.NavigatorState>? navigatorKey,
      required this.routeGuardToLogin})
      : super(navigatorKey);

  final _i6.RouteGuardToLogin routeGuardToLogin;

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LoginPage());
    },
    FirstRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.FirstPage());
    },
    SecondRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SecondPage());
    },
    ThirdRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ThirdPage());
    },
    BankAccountWrapperRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.BankAccountWrapperRoute());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i4.RouteConfig(FirstRoute.name,
            path: '/first-page', guards: [routeGuardToLogin]),
        _i4.RouteConfig(SecondRoute.name,
            path: '/second-page', guards: [routeGuardToLogin]),
        _i4.RouteConfig(ThirdRoute.name,
            path: '/third-page', guards: [routeGuardToLogin]),
        _i4.RouteConfig(BankAccountWrapperRoute.name,
            path: '/', guards: [routeGuardToLogin])
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-page');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.FirstPage]
class FirstRoute extends _i4.PageRouteInfo<void> {
  const FirstRoute() : super(FirstRoute.name, path: '/first-page');

  static const String name = 'FirstRoute';
}

/// generated route for
/// [_i2.SecondPage]
class SecondRoute extends _i4.PageRouteInfo<void> {
  const SecondRoute() : super(SecondRoute.name, path: '/second-page');

  static const String name = 'SecondRoute';
}

/// generated route for
/// [_i2.ThirdPage]
class ThirdRoute extends _i4.PageRouteInfo<void> {
  const ThirdRoute() : super(ThirdRoute.name, path: '/third-page');

  static const String name = 'ThirdRoute';
}

/// generated route for
/// [_i3.BankAccountWrapperRoute]
class BankAccountWrapperRoute extends _i4.PageRouteInfo<void> {
  const BankAccountWrapperRoute()
      : super(BankAccountWrapperRoute.name, path: '/');

  static const String name = 'BankAccountWrapperRoute';
}
