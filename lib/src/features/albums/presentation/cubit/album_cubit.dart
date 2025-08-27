import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/usecase/albums_usecase.dart';

part 'album_state.dart';

class AlbumCubit extends Cubit<AlbumState> {
  AlbumCubit({
    required AlbumsUsecase albumsUsecase,
  }) : _albumsUsecase = albumsUsecase,
       super(AlbumInitial());

  final AlbumsUsecase _albumsUsecase;

  Future<void> loadAlbumContent() async {}
}
