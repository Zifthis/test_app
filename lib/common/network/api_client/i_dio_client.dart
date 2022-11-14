import 'package:test_app/feature/movie_details/data/model/movie_details_response.dart';
import 'package:test_app/feature/popular_movies/data/models/movie_response.dart';

abstract class IDioClient {
  Future<MovieResponse> getMovieList();
  Future<MovieDetailsResponse> getMovieDetails(String id);
  Future<MovieResponse> getPagedMovieList(int page);
}
