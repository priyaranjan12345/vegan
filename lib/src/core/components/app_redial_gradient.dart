import 'package:flutter/material.dart';
import 'package:vegan/src/core/theme/app_colors.dart';

class RadiaGradient extends StatelessWidget {
  const RadiaGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Colors.blue,
            AppColors.black,
          ],
          center: Alignment(0, 1.2),
          radius: 1,
          stops: <double>[0.08, 1],
        ),
      ),
    );
  }
}
