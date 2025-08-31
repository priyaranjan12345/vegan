import 'package:flutter/material.dart';
import 'package:vegan/src/core/components/app_text.dart';

class MaxMusicPlayerError extends StatelessWidget {
  const MaxMusicPlayerError({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppText.heading(text: 'Unable to Get Music Details, Try Again Later'),
        const SizedBox(height: 16),
      ],
    );
  }
}
