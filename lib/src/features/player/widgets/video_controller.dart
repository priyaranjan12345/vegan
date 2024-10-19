import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoController extends StatefulWidget {
  const VideoController({super.key, required this.controller});

  final VideoPlayerController controller;

  @override
  State<VideoController> createState() => _VideoControllerState();
}

class _VideoControllerState extends State<VideoController> {
  // isPlayong
  // isMute / volume
  // isLandscape
  // position
  // duration

  void videoControllerListener() {}

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(videoControllerListener);
  }

  @override
  void dispose() {
    widget.controller.removeListener(videoControllerListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
