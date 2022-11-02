import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/network/api_client/api_client.dart';
import 'package:test_app/common/network/api_const.dart';
import 'package:test_app/common/network/interceptors/header_interceptors.dart';

final apiClientProvider = Provider<ApiClient>(
  (ref) => ApiClient(ref.read(_apiClientProvider)),
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
            HeaderInterceptor(),
          ],
        ),
    );
