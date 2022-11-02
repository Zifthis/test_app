import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_app/common/network/api_const.dart';
import 'package:test_app/feature/popular_movies/data/models/get_popular_response.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: ApiConst.baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/movie/popular")
  Future<GetPopularResponse> getPopularMovies();
}
