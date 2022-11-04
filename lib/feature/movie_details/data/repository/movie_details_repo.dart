import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/network/api_client/dio_client.dart';
import 'package:test_app/feature/movie_details/data/repository/i_movie_details_repo.dart';
import 'package:test_app/feature/movie_details/domain/entities/movie_details.dart';

final movieDetailsRepositoryProvider = Provider<IMovieDetailsRepo>(
  (ref) => MovieDetailsRepo(ref.read(getApiClientProvider)),
);

class MovieDetailsRepo implements IMovieDetailsRepo {
  final DioClient _apiClient;

  MovieDetailsRepo(this._apiClient);
  @override
  Future<MovieDetails> fetchMovieDetails(String movieId) async {
    final response = await _apiClient.getMovieDetails(movieId);
    return response.toDomain();
  }
}
