import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:talker/talker.dart';
import 'package:vegan/src/core/modules/local_storage/i_local_storage.dart';
import 'package:vegan/src/core/modules/local_storage/local_storage.dart';
import 'package:vegan/src/global/usecases/songs_history_local_storage.dart';
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
  await initHive();

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
    () => DioConfig(
      Dio(),
      talker: injector<Talker>(),
    ).client(baseUrl: AppUrl.ytmusicUrl),
  );

  /// register external
  injector.registerLazySingleton(
    () => http.Client(),
  );

  /// feature wise injector
  await PlayerInjector(injector).call();
  CommingSoonInjector(injector).call();
  VideoHubInjector(injector).call();
  SearchInjector(injector).call();
  AlbumsInjector(injector).call();

  // bloc oberver
  Bloc.observer = AppBlocObserver(
    taker: injector<Talker>(),
  );
}

Future<void> initHive() async {
  // initialize hive storage
  final directory = await getApplicationCacheDirectory();
  await Hive.initFlutter(directory.path);

  final historyBox = await Hive.openBox('historyBox');
  final favsBox = await Hive.openBox('favsBox');

  injector.registerSingleton<ILocalStorage>(
    instanceName: 'historyBox',
    LocalStorage(box: historyBox),
  );

  injector.registerSingleton<ILocalStorage>(
    instanceName: 'favsBox',
    LocalStorage(box: favsBox),
  );

  injector.registerFactory(
    () => SongsHistoryLocalStorage(
      iLocalStorage: injector(instanceName: 'historyBox'),
    ),
  );
}
