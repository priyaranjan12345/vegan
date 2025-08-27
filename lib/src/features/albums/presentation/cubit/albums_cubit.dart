import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/entity/albums_entity.dart';
import '../../domain/usecase/albums_usecase.dart';

part 'albums_state.dart';

class AlbumsCubit extends Cubit<AlbumsState> {
  AlbumsCubit({
    required AlbumsUsecase albumsUsecase,
  }) : _albumsUsecase = albumsUsecase,
       super(const AlbumsInitial());

  final AlbumsUsecase _albumsUsecase;

  Future<void> loadAlbumContent(String browseId) async {
    emit(const AlbumsLoading());

    final result = await _albumsUsecase(
      AlbumsParams(browseId: browseId),
    );

    result.fold(
      (l) => emit(const AlbumError()),
      (r) => emit(AlbumsLoaded(albumsEntity: r)),
    );
  }
}
