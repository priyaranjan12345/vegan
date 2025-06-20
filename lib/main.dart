import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';

import 'src/app/app.dart';

Future<void> main() async {
  runApp(const SplashApp());
  WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized();
  await init();
  runApp(const VeganApp());
}

// search
// download, play history, custom local playlist, favourite
// settings

// notification player(service)
