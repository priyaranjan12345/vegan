import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegan/src/features/video_hub/presentation/bloc/video_hub_bloc.dart';
import 'package:vegan/src/features/video_hub/presentation/widget/top_movies.dart';

import '../../domain/entity/entity.dart';
import '../widget/widget.dart';

class VideoHubView extends StatelessWidget {
  const VideoHubView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoHubBloc, VideoHubState>(
      builder: (context, state) => switch (state) {
        VideoHubInitial() || VideoHubLoading() => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        VideoHubLoaded() => VideoHub(videos: state.videos),
        VideoHubError() => const Center(
            child: Text('Oops something went wrong...'),
          ),
      },
    );
  }
}

class VideoHub extends StatelessWidget {
  const VideoHub({super.key, required this.videos});

  final List<VideoEntity> videos;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const TopMovies(),
        VideosForYouWidget(videos: videos),
        const SizedBox(height: 20),
        
        LatestVideosWidget(videos: videos.take(6).toList()),
        const SizedBox(height: 20),
      ],
    );
  }
}
