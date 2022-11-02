import 'package:test_app/feature/popular_movies/data/models/get_popular_response.dart';

abstract class IPopularRepo {
  Future<GetPopularResponse> getPopularResponse();
}
