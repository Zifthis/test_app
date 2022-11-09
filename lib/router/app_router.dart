import 'package:auto_route/auto_route.dart';
import 'package:test_app/common/presentation/home.dart';
import 'package:test_app/common/presentation/movie_screen.dart';
import 'package:test_app/feature/movie_details/presentation/movie_details_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: Home, initial: true),
    AutoRoute(page: MovieScreen, path: '/movie_screen'),
    AutoRoute(page: MovieDetailsScreen, path: '/movie_detail_screen'),
  ],
)
class $AppRouter {}
