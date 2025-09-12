import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:talker/talker.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

import 'dio_interceptor.dart';

class DioConfig {
  const DioConfig(
    this.dio, {
    required this.talker,
  });

  final Talker talker;
  final Dio dio;

  Dio client({required String baseUrl}) {
    dio.options.baseUrl = baseUrl;
    dio.options.connectTimeout = const Duration(seconds: 10);
    dio.options.receiveTimeout = const Duration(seconds: 10);
    dio.options.sendTimeout = const Duration(seconds: 10);

    dio.interceptors.add(
      TalkerDioLogger(
        talker: talker,
        settings: const TalkerDioLoggerSettings(
          printRequestHeaders: true,
          printResponseHeaders: true,
          printResponseData: false,
        ),
      ),
    );

    dio.interceptors.addAll(
      [
        RetryInterceptor(
          dio: dio,
          retries: 2,
          retryDelays: [
            const Duration(seconds: 2),
            const Duration(seconds: 4),
            const Duration(seconds: 6),
          ],
          retryEvaluator: (error, i) {
            if (error.error is SocketException) {
              Fluttertoast.showToast(
                msg: 'Please check your internet connection',
              );
              return true;
            } else {
              return false;
            }
          },
        ),
        DioInterceptor(dio: dio),
      ],
    );

    return dio;
  }
}
