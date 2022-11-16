import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/domain/error/app_failure.dart';
import 'package:test_app/common/domain/error/error_handling.dart';
import 'package:test_app/common/network/api_client/dio_client.dart';
import 'package:test_app/common/network/api_client/i_dio_client.dart';
import 'package:test_app/feature/movie_details/domain/entities/movie_details.dart';
import 'package:test_app/feature/popular_movies/data/models/movie_response.dart';
import 'package:test_app/feature/popular_movies/data/repository/i_movie_repository.dart';

final movieRepositoryProvider = Provider<IMovieRepository>(
  (ref) => MovieRepository(ref.read(getApiClientProvider)),
);

class MovieRepository implements IMovieRepository {
  final IDioClient _apiClient;

  MovieRepository(this._apiClient);

  @override
  EitherAppFailureOr<MovieResponse> getPopularResponse() async {
    try {
      final popularResponse = await _apiClient.getMovieList();
      return Right(popularResponse);
    } on DioError catch (error) {
      final err = error;
      err.response?.statusCode;
      return Left(Failure.notFound.toAppFailure);
    } catch (err) {
      return Left(Failure.badRequest.toAppFailure);
    }
  }

  @override
  EitherAppFailureOr<MovieDetails> fetchMovieDetails(
      int page, int movieId) async {
    try {
      final detailResponse = await _apiClient.getMovieDetails(page, movieId);
      return Right(detailResponse.toDomain());
    } on DioError catch (error) {
      final err = error;
      err.response?.statusCode;
      return Left(Failure.notFound.toAppFailure);
    } catch (err) {
      return Left(Failure.badRequest.toAppFailure);
    }
  }

  @override
  EitherAppFailureOr<List<Result>> fetchPagedMovieResponse(int page) async {
    try {
      final popularResponse = await _apiClient.getPagedMovieList(page);
      return Right(popularResponse);
    } on DioError catch (error) {
      final err = error;
      err.response?.statusCode;
      return Left(Failure.notFound.toAppFailure);
    } catch (err) {
      return Left(Failure.badRequest.toAppFailure);
    }
  }
}
