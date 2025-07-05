import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entity/entity.dart';
import '../bloc/browse_bloc/browse_bloc.dart';
import '../widget/moods_chips.dart';
import '../widget/suggestions.dart';
import '../widget/suggestions_playlist.dart';

class VideoHubView extends StatelessWidget {
  const VideoHubView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BrowseBloc, BrowseState>(
      builder: (context, state) => switch (state.browseStatus) {
        BrowseStatus.initial => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
        BrowseStatus.success => BrowseView(
          moods: state.moods,
          browseCarousels: state.browseCarousels,
          continuationId: state.continuationId,
          hasReachedMax: state.hasReachedMax,
        ),
        BrowseStatus.failure => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Oops something went wrong...',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  context.read<BrowseBloc>().add(
                    const BrowseInitEvent(),
                  );
                },
                child: const Text('Retry'),
              ),
            ),
          ],
        ),
      },
    );
  }
}

class BrowseView extends StatefulWidget {
  const BrowseView({
    super.key,
    required this.moods,
    required this.browseCarousels,
    required this.continuationId,
    this.hasReachedMax = false,
  });

  final List<MoodEntity> moods;
  final List<Object> browseCarousels;
  final String continuationId;
  final bool hasReachedMax;

  @override
  State<BrowseView> createState() => _BrowseViewState();
}

class _BrowseViewState extends State<BrowseView> {
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
          moods: widget.moods,
          onSelectMoods: (params) {
            context.read<BrowseBloc>().add(
              BrowseMoodEvent(params: params),
            );
          },
        ),
        const SizedBox(height: 12),
        ...widget.browseCarousels.map(
          (carousel) {
            if (carousel is VideoSuggestionEntity) {
              return Suggestions(
                suggestions: carousel.videos,
                heading: carousel.heading,
              );
            }

            if (carousel is PlaylistSuggestionEntity) {
              return SuggestionsPlaylist(
                playlists: carousel.playlists,
                heading: carousel.heading,
              );
            }

            return const SizedBox.shrink();
          },
        ),
        const SizedBox(height: 12),
        if (!widget.hasReachedMax)
          const Center(
            child: RepaintBoundary(
              child: CircularProgressIndicator(),
            ),
          ),
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
      context.read<BrowseBloc>().add(
        BrowseContinuationEvent(
          continuationId: widget.continuationId,
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
