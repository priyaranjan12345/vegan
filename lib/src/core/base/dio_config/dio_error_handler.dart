import 'package:dio/dio.dart';

void dioApiErrorHandler(
    DioException err, ErrorInterceptorHandler handler, Dio dio) async {
  switch (err.type) {
    case DioExceptionType.connectionTimeout:
      handler.resolve(
        Response(
          data: {'detail': 'connect timeout error'},
          requestOptions: err.requestOptions,
        ),
      );
      break;
    case DioExceptionType.sendTimeout:
      handler.resolve(
        Response(
          data: {'detail': 'sending data is slow'},
          requestOptions: err.requestOptions,
        ),
      );
      break;
    case DioExceptionType.receiveTimeout:
      handler.resolve(
        Response(
          data: {'detail': 'receiving data is slow'},
          requestOptions: err.requestOptions,
        ),
      );
      break;
    case DioExceptionType.badResponse:
      if (err.response!.statusCode == 404) {
        handler.resolve(
          Response(
            data: {
              'detail': 'server error: status code ${err.response!.statusCode}'
            },
            requestOptions: RequestOptions(
              path: err.requestOptions.path,
            ),
          ),
        );
      } else {
        handler.resolve(
          err.response ??
              Response(
                data: {'detail': 'response error'},
                requestOptions: err.requestOptions,
              ),
        );
      }
      break;
    case DioExceptionType.cancel:
      handler.resolve(
        Response(
          data: {'detail': 'user cancelled request'},
          requestOptions: err.requestOptions,
        ),
      );
      break;
    case DioExceptionType.badCertificate:
      handler.resolve(
        Response(
          data: {'detail': 'Bad certificate'},
          requestOptions: err.requestOptions,
        ),
      );
      break;
    case DioExceptionType.connectionError:
      handler.resolve(
        Response(
          data: {'detail': 'No Internet'},
          requestOptions: err.requestOptions,
        ),
      );
      break;
    case DioExceptionType.unknown:
      handler.resolve(
        Response(
          data: {'detail': 'other error'},
          requestOptions: err.requestOptions,
        ),
      );
      break;
  }
}
