import 'package:flutter/material.dart';

import '../../../../../../core/components/app_text.dart';
import '../../../widgets/play_button.dart';

class MiniMusicPlayerError extends StatelessWidget {
  const MiniMusicPlayerError({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 4.0,
      ),
      child: Row(
        children: [
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppText.heading(
                  text: 'Unable to Get Music Details',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                AppText.smallText(
                  text: 'Try Again...',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          PlayButton.error(),
        ],
      ),
    );
  }
}
