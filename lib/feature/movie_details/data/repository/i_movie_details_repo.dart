import 'package:test_app/feature/movie_details/domain/entities/movie_details.dart';

abstract class IMovieDetailsRepo {
  Future<MovieDetails> fetchMovieDetails(String movieId);
}
