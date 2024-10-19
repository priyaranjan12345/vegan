import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegan/src/features/video_hub/presentation/bloc/video_hub_bloc.dart';

class VideoHubView extends StatelessWidget {
  const VideoHubView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoHubBloc, VideoHubState>(
      builder: (context, state) => switch (state) {
        VideoHubInitial() || VideoHubLoading() => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
        VideoHubLoaded() => Container(),
        VideoHubError() => const Center(
            child: Text('Oops something went wrong...'),
          ),
      },
    );
  }
}
