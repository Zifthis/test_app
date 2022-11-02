import 'package:dio/dio.dart';

class HeaderInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Accept'] = 'application/json';
    options.headers['Authorization'] =
        'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2MGJlZjQ5NDFmYjEzODgwNDk2NjBlMzQ3MzFkODY3YSIsInN1YiI6IjVlNDE2NTQ1OTYwMzMxMDAxN2VmNzE4MyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.suvTkXCI1v3eca_dID6WQ6Yfe8UhRYjoZ4FlcLWa6EM';
    return super.onRequest(options, handler);
  }
}
