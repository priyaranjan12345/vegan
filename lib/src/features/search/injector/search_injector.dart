import '../../../app/app.dart';
import '../data/datasource/search_datasource.dart';
import '../data/repository/repository.dart';
import '../domain/repository/repository.dart';
import '../domain/usecase/search_usecase.dart';
import '../presentation/bloc/search_bloc.dart';

class SearchInjector {
  SearchInjector._();

  static void inject() {
    /// register datasource
    injector.registerLazySingleton<SearchDatasource>(
      () => ISearchDatasource(dio: injector()),
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
