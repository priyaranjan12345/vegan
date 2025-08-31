import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegan/src/features/player/presentation/bloc/video_player_bloc/video_player_bloc.dart';
import 'package:video_player/video_player.dart';

class FullScreenPlayer extends StatelessWidget {
  const FullScreenPlayer({super.key, required this.videoUrl});

  final String videoUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BlocProvider(
            create: (_) => VideoPlayerBloc(
              controller: VideoPlayerController.networkUrl(
                Uri.parse(
                    //videoUrl // not working
                    'https://download.blender.org/peach/bigbuckbunny_movies/BigBuckBunny_320x180.mp4'),
                videoPlayerOptions: VideoPlayerOptions(
                  mixWithOthers: true,
                ),
              ),
            )..add(const InitializeVideoPlayerEvent()),
            child: Center(
              child: Container(
                color: Colors.black,
                child: BlocBuilder<VideoPlayerBloc, VideoPlayerState>(
                  builder: (context, state) {
                    return switch (state.status) {
                      VideoControllerStatus.initial ||
                      VideoControllerStatus.initializing =>
                        const Center(
                            child: CircularProgressIndicator.adaptive()),
                      VideoControllerStatus.initialized => SizedBox(
                          width: double.infinity,
                          height: 200,
                          child: VideoPlayer(state.videoPlayerController),
                        ),
                      VideoControllerStatus.error =>
                        const Center(child: Text('Oops video can\'t play'))
                    };
                  },
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 16, right: 16),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.cancel,
                  size: 40,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
