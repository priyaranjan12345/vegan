import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegan/src/features/video_hub/presentation/bloc/video_hub_bloc.dart';
import 'package:vegan/src/features/video_hub/presentation/state_ui/moods_state_ui/moods_state_ui.dart';

import '../../domain/entity/entity.dart';
import '../widget/suggestions.dart';
import '../widget/suggestions_playlist.dart';

class VideoHubView extends StatelessWidget {
  const VideoHubView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoHubBloc, VideoHubState>(
      builder: (context, state) => switch (state) {
        VideoHubInitial() || VideoHubLoading() => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        VideoHubLoaded() => VideoHub(homeEntity: state.homeEntity),
        VideoHubError() => const Center(
            child: Text('Oops something went wrong...'),
          ),
      },
    );
  }
}

class VideoHub extends StatelessWidget {
  const VideoHub({super.key, required this.homeEntity});

  final HomeEntity homeEntity;

  @override
  Widget build(BuildContext context) {
    return ListView(
      cacheExtent: 1000,
      padding: EdgeInsets.zero,
      // addAutomaticKeepAlives: true,
      children: [
        const MoodsStateUi(
          key: ValueKey('moods'),
        ),
        const SizedBox(height: 12),
        ...homeEntity.videoSuggestions.map(
          (suggestion) {
            return Suggestions(
              key: ValueKey(suggestion.heading),
              suggestions: suggestion.videos,
              heading: suggestion.heading,
            );
          },
        ),
        ...homeEntity.playlistSuggestions.map(
          (playlist) {
            return SuggestionsPlaylist(
              key: ValueKey(playlist.heading),
              playlists: playlist.playlists,
              heading: playlist.heading,
            );
          },
        ),
      ],
    );
  }
}
