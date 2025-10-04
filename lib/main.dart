import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';

import 'src/app/app.dart';

Future<void> main() async {
  runApp(const SplashApp());
  if (Platform.isAndroid || Platform.isIOS) {
    await FlutterDisplayMode.setHighRefreshRate();
  }
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const VeganApp());
}
