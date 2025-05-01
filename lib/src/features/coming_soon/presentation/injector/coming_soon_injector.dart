import 'package:vegan/src/app/injector.dart';

import '../../data/datasource/coming_soon_datasource.dart';
import '../../data/repository/coming_soon_repository.dart';
import '../../domain/repository/i_coming_soon_repository.dart';
import '../../domain/usecase/coming_soon_usecase.dart';
import '../bloc/coming_soon_bloc.dart';

class CommingSoonInjector {
  static void inject() {
    injector.registerFactory<ComingSoonBloc>(
      () => ComingSoonBloc(comingSoonUsecase: injector()),
    );

    /// register Usecase
    injector.registerLazySingleton<ComingSoonUsecase>(
      () => ComingSoonUsecase(iComingSoonRepository: injector()),
    );

    /// register repository
    injector.registerLazySingleton<IComingSoonRepository>(
      () => ComingSoonRepository(iComingSoonDatasource: injector()),
    );

    /// register datasource
    injector.registerLazySingleton<IComingSoonDatasource>(
      () => ComingSoonDatasource(httpClient: injector()),
    );
  }
}
