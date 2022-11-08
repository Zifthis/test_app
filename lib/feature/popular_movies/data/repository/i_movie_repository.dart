import 'package:test_app/common/domain/error/error_handling.dart';
import 'package:test_app/feature/movie_details/domain/entities/movie_details.dart';
import 'package:test_app/feature/popular_movies/data/models/movie_response.dart';

//DATA LAYER

//Abstraktna klasa - Sučelje repositorya koje ima 2 funkcije, dohvat filmova i detalje o filmu
abstract class IMovieRepository {
  EitherAppFailureOr<MovieResponse> getPopularResponse();
  EitherAppFailureOr<MovieDetails> fetchMovieDetails(String movieId);
}
