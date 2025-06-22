import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entity/entity.dart';
import '../bloc/video_hub_bloc.dart';
import '../widget/moods_chips.dart';
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

class VideoHub extends StatefulWidget {
  const VideoHub({super.key, required this.homeEntity});

  final HomeEntity homeEntity;

  @override
  State<VideoHub> createState() => _VideoHubState();
}

class _VideoHubState extends State<VideoHub> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: _scrollController,
      padding: const EdgeInsets.only(bottom: 116),
      children: [
        MoodsChips(
          moods: widget.homeEntity.moods,
          onSelectMoods: (params) {
            context.read<VideoHubBloc>().add(
              LoadMoodMusic(params: params),
            );
          },
        ),
        const SizedBox(height: 12),
        ...widget.homeEntity.videoSuggestions.map(
          (suggestion) {
            return Suggestions(
              key: ValueKey(suggestion.heading),
              suggestions: suggestion.videos,
              heading: suggestion.heading,
            );
          },
        ),
        const SizedBox(height: 12),
        ...widget.homeEntity.playlistSuggestions.map(
          (playlist) {
            return SuggestionsPlaylist(
              key: ValueKey(playlist.heading),
              playlists: playlist.playlists,
              heading: playlist.heading,
            );
          },
        ),

        /// load more
        // const SizedBox(height: 16),
        // const Center(
        //   child: RepaintBoundary(
        //     child: CircularProgressIndicator(),
        //   ),
        // ),
      ],
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<VideoHubBloc>().add(
        const LoadContinuation(
          continuationId:
              '4qmFsgKhAhIMRkVtdXNpY19ob21lGpACQ0FaNnh3RkhTaTFwTVRWbE1taEpORVJYYjBWQ1EyNDRTMHBJYkRCWU0wSm9XakpXWm1NeU5XaGpTRTV2WWpOU1ptSllWbnBoVjA1bVkwZEdibHBXT1hsYVYyUndZakkxYUdKQ1NXWlJXR1F4Vm1wS1lVOUdUazVaVjA1WFVWVlNSR0pZV25oalZtaHFXVzVLU0ZwSFZUVmlSMVpUWVhodk1sUllWbnBoVjA1RllWaE9hbUl6V214amJteFJXVmRrYkZVeVZubGtiV3hxV2xNeFNGcFlVa2xpTWpGc1ZVZEdibHBSUVVKQlIxWjFRVUZHU2xSblFVSlRWVFJCUVZGRlJDMXdla2gyVVd0RFEwRmo%3D',
        ),
      );
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
