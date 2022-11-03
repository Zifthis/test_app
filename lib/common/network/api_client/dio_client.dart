import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/feature/popular_movies/data/models/movie_response.dart';

final getApiClientProvider = Provider<DioClient>(
  (ref) => DioClient(),
);

class DioClient {
  late final Dio _dio;

  DioClient() {
    _dio = Dio(BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3/',
      queryParameters: {
        'api_key': '60bef4941fb1388049660e34731d867a',
      },
    ));
  }

  Future<MovieResponse> getPosts() async {
    final response = await _dio.get('/movie/popular');
    try {
      final value = MovieResponse.fromJson(response.data);
      return value;
    } catch (err) {
      print(err);
    }
    return MovieResponse.fromJson({});
  }
}
