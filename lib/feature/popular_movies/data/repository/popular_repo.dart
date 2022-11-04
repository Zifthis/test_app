import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/network/api_client/dio_client.dart';
import 'package:test_app/feature/popular_movies/data/models/movie_response.dart';
import 'package:test_app/feature/popular_movies/data/repository/i_popular_repo.dart';

//Getting Dio client provider
final popularRepositoryProvider = Provider<IPopularRepo>(
  (ref) => PopularRepo(ref.read(getApiClientProvider)),
);

class PopularRepo implements IPopularRepo {
  final DioClient _apiClient;

  PopularRepo(this._apiClient);

  @override
  Future<MovieResponse> getPopularResponse() async {
    final response = await _apiClient.getMovieList();
    return response;
  }
}
