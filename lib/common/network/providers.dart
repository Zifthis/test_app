import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/network/api_client/api_client.dart';
import 'package:test_app/common/network/api_const.dart';
import 'package:test_app/common/network/interceptors/header_interceptors.dart';

/// DioClient uses provider for easy access through the app
final apiClientProvider = Provider<ApiClient>(
  (ref) => ApiClient(ref.read(
    _apiClientProvider,
  )),
);

final _apiClientProvider = _buildDioProviderWith(
  baseUrl: ApiConst.baseUrl,
);

Provider<Dio> _buildDioProviderWith({
  required String baseUrl,
}) =>
    Provider<Dio>(
      (ref) => Dio(
        BaseOptions(baseUrl: baseUrl),
      )..interceptors.addAll(
          [
            //HEADER INTERCEPTOR: API gateway server built for
            //accepting API requests from the client applications
            //and routing them to the appropriate backend services.
            HeaderInterceptor(),
          ],
        ),
    );
