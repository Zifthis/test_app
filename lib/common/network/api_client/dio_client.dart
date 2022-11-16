import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:test_app/common/network/api_client/i_dio_client.dart';
import 'package:test_app/feature/popular_movies/data/models/movie_response.dart';
import 'package:test_app/feature/movie_details/data/model/movie_details_response.dart';

final getApiClientProvider = Provider<DioClient>(
  (ref) => DioClient(),
);

class DioClient implements IDioClient {
  late final Dio _dio;

  DioClient() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.themoviedb.org/3',
        queryParameters: {
          'api_key': '60bef4941fb1388049660e34731d867a',
          'page': ''
        },
      ),
    );

    _dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        compact: false,
      ),
    );
  }

  @override
  Future<MovieResponse> getMovieList() async {
    final response = await _dio.get('/movie/popular');
    final value = MovieResponse.fromJson(response.data);
    return value;
  }

  @override
  Future<MovieDetailsResponse> getMovieDetails(int page, int movieId) async {
    final response = await _dio.get(
      '/movie/$movieId',
      queryParameters: {'page': page},
    );
    final value = MovieDetailsResponse.fromJson(response.data);
    return value;
  }

  @override
  Future<List<Result>> getPagedMovieList(int page) async {
    final response = await _dio.get(
      '/movie/popular',
      queryParameters: {'page': page},
    );
    final value = MovieResponse.fromJson(response.data);
    return value.result!;
  }
}
