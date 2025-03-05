import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16.0,
        children: [
          Center(
            child: Image.asset('assets/logo/logos_netflix.png'),
          ),
          const RepaintBoundary(
            child: CircularProgressIndicator(),
          )
        ],
      ),
    );
  }
}
