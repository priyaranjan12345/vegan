import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:talker/talker.dart';
import '../features/albums/injector/injector.dart';
import 'bloc_observer.dart';

import '../core/base/app_url.dart';
import '../core/base/dio_config/dio_config.dart';
import '../core/router/router.dart';
import '../features/coming_soon/presentation/injector/coming_soon_injector.dart';
import '../features/player/injector/player_injector.dart';
import '../features/search/injector/search_injector.dart';
import '../features/video_hub/injector/video_hub_injector.dart';

/// app injector for the get_it
final injector = GetIt.instance;

/// Global [init] injector
Future<void> init() async {
  await Future.delayed(const Duration(seconds: 2));

  // register auto router instance
  injector.registerSingleton(AppRouter());

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

  /// feature wise injector
  PlayerInjector(injector).call();
  CommingSoonInjector(injector).call();
  VideoHubInjector(injector).call();
  SearchInjector(injector).call();
  AlbumsInjector(injector).call();

  // bloc oberver
  Bloc.observer = AppBlocObserver();
}
