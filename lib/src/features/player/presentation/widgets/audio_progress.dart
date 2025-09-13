import 'package:audio_service/audio_service.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';

class AudioProgress extends StatelessWidget {
  const AudioProgress({
    super.key,
    required this.totalDuration,
    this.onseek,
  });

  final Duration totalDuration;
  final void Function(Duration position)? onseek;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Duration>(
      stream: AudioService.position,
      builder: (context, positionSnapshot) {
        // Retrieve the current position from the stream
        Duration? position = positionSnapshot.data;

        // Display the ProgressBar widget
        return ProgressBar(
          // Set the progress to the current position or zero if null
          progress: position ?? Duration.zero,
          // Set the total duration of the song
          total: totalDuration,
          // Callback for seeking when the user interacts with the progress bar
          onSeek: onseek,
          // Customize the appearance of the progress bar
          barHeight: 6,
          thumbRadius: 3,
          thumbGlowRadius: 6,
          timeLabelLocation: TimeLabelLocation.below,
          timeLabelPadding: 10,
        );
      },
    );
  }
}
