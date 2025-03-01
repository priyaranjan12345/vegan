import 'package:flutter/material.dart';
import 'package:vegan/src/features/video_hub/presentation/page/page.dart';

import '../core/theme/theme.dart';

class VeganApp extends StatelessWidget {
  const VeganApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vegan',
      themeMode: ThemeMode.dark,
      darkTheme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
      home: const VideoHubPage(),
    );
  }
}
