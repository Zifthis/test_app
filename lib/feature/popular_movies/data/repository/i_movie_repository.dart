import 'package:test_app/common/domain/error/error_handling.dart';
import 'package:test_app/feature/movie_details/domain/entities/movie_details.dart';
import 'package:test_app/feature/popular_movies/data/models/movie_response.dart';

//1 REPO ZA SVE FILMOVE
abstract class IMovieRepository {
  EitherAppFailureOr<MovieResponse> getPopularResponse();
  EitherAppFailureOr<MovieDetails> fetchMovieDetails(String movieId);
}
