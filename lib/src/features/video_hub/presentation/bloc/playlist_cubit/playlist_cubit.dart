import 'package:equatable/equatable.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entity/entity.dart';
import '../../../domain/usecase/playlist_usecase.dart';

part 'playlist_state.dart';

class PlaylistCubit extends Cubit<PlaylistState> {
  PlaylistCubit({
    required PlaylistUsecase playlistUsecase,
  }) : _playlistUsecase = playlistUsecase,
       super(const PlaylistLoadingState());

  final PlaylistUsecase _playlistUsecase;

  Future<void> loadPlaylist(
    String browseId, {
    String? params,
  }) async {
    try {
      final result = await _playlistUsecase(
        PlaylistParams(browseId: browseId, params: params),
      );
      result.fold(
        (l) => emit(
          const PlaylistErrorState(message: 'Remote data error'),
        ),
        (r) => emit(PlaylistLoadedState(videoEntities: r)),
      );
    } catch (e) {
      emit(const PlaylistErrorState(message: 'failed to load playlist'));
    }
  }
}
