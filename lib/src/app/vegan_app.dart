import 'package:flutter/material.dart';
import 'package:vegan/src/features/video_hub/presentation/page/page.dart';

class VeganApp extends StatelessWidget {
  const VeganApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vegan',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const VideoHubPage(),
    );
  }
}
