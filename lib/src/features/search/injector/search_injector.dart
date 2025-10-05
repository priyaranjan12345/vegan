import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

import '../../../core/modules/local_storage/i_local_storage.dart';
import '../../../core/modules/local_storage/local_storage.dart';
import '../data/datasource/search_datasource.dart';
import '../data/repository/repository.dart';
import '../domain/repository/repository.dart';
import '../domain/usecase/search_usecase.dart';
import '../presentation/bloc/search_bloc.dart';

class SearchInjector {
  const SearchInjector(this.injector);

  final GetIt injector;

  Future<void> call() async {
    /// register local storage
    const boxName = 'searchHistoryBox';
    final searchHistoryBox = await Hive.openBox(boxName);
    injector.registerSingleton<ILocalStorage>(
      instanceName: boxName,
      LocalStorage(box: searchHistoryBox),
    );

    /// register datasource
    injector.registerLazySingleton<SearchDatasource>(
      () => ISearchDatasource(
        dio: injector(),
        // pass local storage
      ),
    );

    /// register repository
    injector.registerLazySingleton<SearchRepository>(
      () => ISearchRepository(searchDatasource: injector()),
    );

    /// register Usecase
    injector.registerLazySingleton<SearchUsecase>(
      () => SearchUsecase(searchRepository: injector()),
    );

    /// register bloc
    injector.registerFactory(
      () => SearchBloc(searchUsecase: injector()),
    );
  }
}
