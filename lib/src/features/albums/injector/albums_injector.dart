import 'package:get_it/get_it.dart';

import '../data/datasource/albums_datasource.dart';
import '../data/repository/albums_repository.dart';
import '../domain/datasource/i_albums_datasource.dart';
import '../domain/repository/i_albums_repository.dart';
import '../domain/usecase/albums_usecase.dart';
import '../presentation/cubit/albums_cubit.dart';

class AlbumsInjector {
  const AlbumsInjector(this.injector);

  final GetIt injector;

  void call() {
    // register datasource
    injector.registerFactory<IAlbumsDatasource>(
      () => AlbumsDatasource(dio: injector()),
    );

    // register repository
    injector.registerFactory<IAlbumsRepository>(
      () => AlbumsRepository(iAlbumsDatasource: injector()),
    );

    // register usecase
    injector.registerFactory<AlbumsUsecase>(
      () => AlbumsUsecase(iAlbumsRepository: injector()),
    );

    // register bloc
    injector.registerFactory<AlbumsCubit>(
      () => AlbumsCubit(albumsUsecase: injector()),
    );
  }
}
