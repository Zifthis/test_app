import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_app/feature/movie_details/data/model/movie_details_response.dart';
import 'package:test_app/feature/popular_movies/data/models/movie_response.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/movie/popular")
  Future<MovieResponse> getPopularMovies();

  @GET("/movie/{id}")
  Future<MovieDetailsResponse> getMovieDetails({
    @Path('id') required String id,
  });
}
