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

import '../common/presentation/home.dart' as _i1;
import '../common/presentation/movie_screen.dart' as _i2;
import '../feature/movie_details/presentation/movie_details_screen.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    Home.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.Home(),
      );
    },
    MovieScreen.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.MovieScreen(),
      );
    },
    MovieDetailsScreen.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.MovieDetailsScreen(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          Home.name,
          path: '/',
        ),
        _i4.RouteConfig(
          MovieScreen.name,
          path: '/movie_screen',
        ),
        _i4.RouteConfig(
          MovieDetailsScreen.name,
          path: '/movie_detail_screen',
        ),
      ];
}

/// generated route for
/// [_i1.Home]
class Home extends _i4.PageRouteInfo<void> {
  const Home()
      : super(
          Home.name,
          path: '/',
        );

  static const String name = 'Home';
}

/// generated route for
/// [_i2.MovieScreen]
class MovieScreen extends _i4.PageRouteInfo<void> {
  const MovieScreen()
      : super(
          MovieScreen.name,
          path: '/movie_screen',
        );

  static const String name = 'MovieScreen';
}

/// generated route for
/// [_i3.MovieDetailsScreen]
class MovieDetailsScreen extends _i4.PageRouteInfo<void> {
  const MovieDetailsScreen()
      : super(
          MovieDetailsScreen.name,
          path: '/movie_detail_screen',
        );

  static const String name = 'MovieDetailsScreen';
}
