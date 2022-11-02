import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/network/api_client/api_client.dart';
import 'package:test_app/common/network/providers.dart';
import 'package:test_app/feature/popular_movies/data/models/get_popular_response.dart';

import 'package:test_app/feature/popular_movies/data/repository/i_popular_repo.dart';

//Getting Dio client provider
final popularRepositoryProvider = Provider<IPopularRepo>(
  (ref) => PopularRepo(ref.read(apiClientProvider)),
);

class PopularRepo implements IPopularRepo {
  final ApiClient _apiClient;

  PopularRepo(this._apiClient);

  @override
  Future<GetPopularResponse> getPopularResponse() async {
    final response = await _apiClient.getPopularMovies();
    return response;
  }
}
