import 'package:dio/dio.dart';

import 'dio_error_handler.dart';

class DioInterceptor extends Interceptor {
  late Dio dio;
  DioInterceptor({required this.dio});
  Stopwatch? stopwatch;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    stopwatch = Stopwatch()..start();

    super.onRequest(options, handler);
  }

  // @override
  // void onResponse(Response response, ResponseInterceptorHandler handler) {
  //   super.onResponse(response, handler);
  // }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    dioApiErrorHandler(err, handler, dio);
  }
}
