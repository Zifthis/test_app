import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:test_app/common/domain/error/app_failure.dart';
import 'package:test_app/common/domain/error/error_handling.dart';
import 'package:test_app/feature/movie_details/data/model/movie_details_response.dart';
import 'package:test_app/feature/popular_movies/data/models/movie_response.dart';

//DATA LAYER

final getApiClientProvider = Provider<DioClient>(
  (ref) => DioClient(),
);

class DioClient {
  //Dio komunicira sa serverom, njegov zadatak je dohvati/prosljedit json podatke. - Dio komunicira sa DioClientom

  late final Dio _dio;

  //DioClient prosljeđuje parametre/upite Dio-u te na temelju upita dobiva odgovor. - DioClient komunicira sa Repositroyiom preko providera: getApiClientProvider
  DioClient() {
    _dio = Dio(BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': '60bef4941fb1388049660e34731d867a',
      },
    ));

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

  //DioClient šalje GET upit koji sluzi za dohvat popular movies, odgovor/response dolazi u JSON formatu koji se mapira i parsira u MovieResponse objekte.
  //error handling
  EitherAppFailureOr<MovieResponse> getMovieList() async {
    try {
      final response = await _dio.get('/movie/popular');
      final value = MovieResponse.fromJson(response.data);
      return Right(value);
    } catch (err) {
      return Left(Failure.badGateway.toAppFailure);
    }
  }

  EitherAppFailureOr<MovieDetailsResponse> getMovieDetails(String id) async {
    try {
      final response = await _dio.get('/movie/$id');
      final value = MovieDetailsResponse.fromJson(response.data);
      return Right(value);
    } catch (err) {
      return Left(Failure.badGateway.toAppFailure);
    }
  }
}
