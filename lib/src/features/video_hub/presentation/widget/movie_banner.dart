import 'package:flutter/material.dart';
import 'package:vegan/src/shared/extension/extensions.dart';

class MovieBanner extends StatelessWidget {
  const MovieBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(
          Colors.black.withOpacity(0.2),
          BlendMode.darken,
        ),
        child: Container(
          height: context.deviceHeight * 0.6,
          width: double.infinity,
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white.withOpacity(0.1),
                Colors.black.withOpacity(0.4),
                Colors.black,
              ],
            ),
          ),
          child: Image.asset(
            fit: BoxFit.cover,
            'assets/logo/banner.png',
          ),
        ),
      ),
    );
  }
}
