import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:talker/talker.dart';
import 'package:vegan/src/app/bloc_observer.dart';
import 'package:vegan/src/core/base/app_url.dart';
import 'package:vegan/src/core/base/dio_config/dio_config.dart';
import 'package:vegan/src/features/coming_soon/presentation/injector/coming_soon_injector.dart';
import 'package:vegan/src/features/video_hub/injector/video_hub_injector.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

import '../core/router/router.dart';

/// app injector for the get_it
final injector = GetIt.instance;

/// Global [init] injector
Future<void> init() async {
  /// Global
  /// register auto router instance
  injector.registerSingleton(AppRouter());

  await Future.delayed(const Duration(seconds: 2));

  /// logger
  injector.registerSingleton(
    Talker(
      settings: TalkerSettings(
        // maxHistoryItems: 100,
        useConsoleLogs: !kReleaseMode,
        enabled: !kReleaseMode,
      ),
      logger: TalkerLogger(
        output: debugPrint,
        settings: TalkerLoggerSettings(
          enableColors: !Platform.isIOS,
        ),
      ),
    ),
  );

  /// dio
  injector.registerLazySingleton(
    () => DioConfig.client(
      baseUrl: AppUrl.ytmusicUrl,
    ),
  );

  /// register external
  injector.registerLazySingleton(
    () => http.Client(),
  );

  injector.registerLazySingleton(
    () => YoutubeExplode(),
  );

  // bloc oberver
  Bloc.observer = AppBlocObserver();

  /// feature wise injector
  CommingSoonInjector.inject();
  VideoHubInjector.inject();
}
