import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    super.key,
    required this.playButtonState,
    this.onPressed,
  });

  final PlayButtonState playButtonState;
  final VoidCallback? onPressed;

  const PlayButton.loading({
    super.key,
  }) : playButtonState = PlayButtonState.loading,
       onPressed = null;

  const PlayButton.success({
    super.key,
    required this.playButtonState,
    this.onPressed,
  });

  const PlayButton.error({
    super.key,
  }) : playButtonState = PlayButtonState.error,
       onPressed = null;

  @override
  Widget build(BuildContext context) {
    Widget child = const SizedBox.shrink();

    if (playButtonState == PlayButtonState.loading) {
      child = const Padding(
        padding: EdgeInsets.all(4.0),
        child: CircularProgressIndicator(),
      );
    }

    if (playButtonState == PlayButtonState.error) {
      child = const Icon(Icons.info_outline_rounded);
    }

    if (playButtonState == PlayButtonState.play) {
      child = const Icon(
        Icons.pause_rounded,
        size: 32,
      );
    }

    if (playButtonState == PlayButtonState.pause) {
      child = const Icon(
        Icons.play_arrow_rounded,
        size: 32,
      );
    }

    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        height: 48,
        width: 48,
        child: Material(
          borderRadius: BorderRadius.circular(16.0),
          color: AppColors.darkGray,
          surfaceTintColor: AppColors.darkGray,
          child: child,
        ),
      ),
    );
  }
}

enum PlayButtonState {
  loading,
  error,
  play,
  pause,
}
