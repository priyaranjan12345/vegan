import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/usecase/usecase.dart';

part 'video_hub_event.dart';
part 'video_hub_state.dart';

class VideoHubBloc extends Bloc<VideoHubEvent, VideoHubState> {
  VideoHubBloc({
    required VideoHubUsecase videoHubUsecase,
  })  : _videoHubUsecase = videoHubUsecase,
        super(VideoHubInitial()) {
    on<VideoHubEvent>((event, emit) {});
  }

  final VideoHubUsecase _videoHubUsecase;

  Future<void> getVideos() async {
    final result = await _videoHubUsecase(NoParams());
    result.fold((l) => null, (r) => null);
  }
}
