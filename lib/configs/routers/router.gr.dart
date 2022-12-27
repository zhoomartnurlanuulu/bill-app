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
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../features/bill/presentation/pages/bill_screen/bill_screen.dart'
    as _i2;
import '../../features/bill/presentation/pages/bill_screen_2/bill_screen_without_scan.dart'
    as _i5;
import '../../features/main/presentation/pages/main_screen/main_screen.dart'
    as _i1;
import '../../features/main/presentation/pages/scan_screen/scan_screen.dart'
    as _i3;
import '../../features/result/presentation/pages/result_screen/result_screen.dart'
    as _i4;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    MainScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainScreen(),
      );
    },
    BillScreenRoute.name: (routeData) {
      final args = routeData.argsAs<BillScreenRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.BillScreen(
          key: args.key,
          path: args.path,
        ),
      );
    },
    ScanScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ScanScreen(),
      );
    },
    ResultScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ResultScreenRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.ResultScreen(
          key: args.key,
          controller: args.controller,
          controllers: args.controllers,
        ),
      );
    },
    BillScreenWithOutScanRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.BillScreenWithOutScan(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          MainScreenRoute.name,
          path: '/main-screen',
        ),
        _i6.RouteConfig(
          BillScreenRoute.name,
          path: '/bill-screen',
        ),
        _i6.RouteConfig(
          ScanScreenRoute.name,
          path: '/',
        ),
        _i6.RouteConfig(
          ResultScreenRoute.name,
          path: '/result-screen',
        ),
        _i6.RouteConfig(
          BillScreenWithOutScanRoute.name,
          path: '/bill-screen-with-out-scan',
        ),
      ];
}

/// generated route for
/// [_i1.MainScreen]
class MainScreenRoute extends _i6.PageRouteInfo<void> {
  const MainScreenRoute()
      : super(
          MainScreenRoute.name,
          path: '/main-screen',
        );

  static const String name = 'MainScreenRoute';
}

/// generated route for
/// [_i2.BillScreen]
class BillScreenRoute extends _i6.PageRouteInfo<BillScreenRouteArgs> {
  BillScreenRoute({
    _i7.Key? key,
    required String path,
  }) : super(
          BillScreenRoute.name,
          path: '/bill-screen',
          args: BillScreenRouteArgs(
            key: key,
            path: path,
          ),
        );

  static const String name = 'BillScreenRoute';
}

class BillScreenRouteArgs {
  const BillScreenRouteArgs({
    this.key,
    required this.path,
  });

  final _i7.Key? key;

  final String path;

  @override
  String toString() {
    return 'BillScreenRouteArgs{key: $key, path: $path}';
  }
}

/// generated route for
/// [_i3.ScanScreen]
class ScanScreenRoute extends _i6.PageRouteInfo<void> {
  const ScanScreenRoute()
      : super(
          ScanScreenRoute.name,
          path: '/',
        );

  static const String name = 'ScanScreenRoute';
}

/// generated route for
/// [_i4.ResultScreen]
class ResultScreenRoute extends _i6.PageRouteInfo<ResultScreenRouteArgs> {
  ResultScreenRoute({
    _i7.Key? key,
    required _i7.TextEditingController controller,
    required String controllers,
  }) : super(
          ResultScreenRoute.name,
          path: '/result-screen',
          args: ResultScreenRouteArgs(
            key: key,
            controller: controller,
            controllers: controllers,
          ),
        );

  static const String name = 'ResultScreenRoute';
}

class ResultScreenRouteArgs {
  const ResultScreenRouteArgs({
    this.key,
    required this.controller,
    required this.controllers,
  });

  final _i7.Key? key;

  final _i7.TextEditingController controller;

  final String controllers;

  @override
  String toString() {
    return 'ResultScreenRouteArgs{key: $key, controller: $controller, controllers: $controllers}';
  }
}

/// generated route for
/// [_i5.BillScreenWithOutScan]
class BillScreenWithOutScanRoute extends _i6.PageRouteInfo<void> {
  const BillScreenWithOutScanRoute()
      : super(
          BillScreenWithOutScanRoute.name,
          path: '/bill-screen-with-out-scan',
        );

  static const String name = 'BillScreenWithOutScanRoute';
}
