import 'package:flutter/material.dart';

import '../features/splash/splash.dart';

class SplashApp extends StatelessWidget {
  const SplashApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(),
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplashPage(),
    );
  }
}
