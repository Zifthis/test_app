import 'package:test_app/feature/popular_movies/data/models/movie_response.dart';

abstract class IPopularRepo {
  Future<MovieResponse> getPopularResponse();
}
