import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/domain/error/app_failure.dart';
import 'package:test_app/common/domain/error/error_handling.dart';
import 'package:test_app/common/network/api_client/dio_client.dart';
import 'package:test_app/feature/movie_details/domain/entities/movie_details.dart';
import 'package:test_app/feature/popular_movies/data/models/movie_response.dart';
import 'package:test_app/feature/popular_movies/data/repository/i_movie_repository.dart';

//DATA LAYER

//MovieRepository koji implementira sučelje IMovieRepository, ovaj repo komunicira sa DioClientom koji se dohvaca preko providera: movieRepositoryProvider

final movieRepositoryProvider = Provider<IMovieRepository>(
  (ref) => MovieRepository(ref.read(getApiClientProvider)),
);

class MovieRepository implements IMovieRepository {
  final DioClient _apiClient;

  MovieRepository(this._apiClient);

//funkicje sučelja se overrideaju potrebnom logikom, npr getPopularResponse() funkcija provjerava dobiven response je validan pomocu EitherAppFailureOr.
//ukoliko response nije validan vraća se Failure poruka i prazan objekt, dok kod validnog responsa dohvaćaju se mapirani json objekti unutar modele - MovieResponse.

  @override
  EitherAppFailureOr<MovieResponse> getPopularResponse() async {
    try {
      final popularResponse = await _apiClient.getMovieList();
      return Right(popularResponse.fold(
        (l) => MovieResponse.empty(),
        (r) => r,
      ));
    } catch (err) {
      return Left(Failure.badRequest.toAppFailure);
    }
  }

  @override
  EitherAppFailureOr<MovieDetails> fetchMovieDetails(String movieId) async {
    try {
      final detailResponse = await _apiClient.getMovieDetails(movieId);
      return Right(detailResponse.fold(
        (l) => MovieDetails.empty(),
        (r) => r.toDomain(),
      ));
    } catch (err) {
      return Left(Failure.badRequest.toAppFailure);
    }
  }
}
