import 'package:flutter/material.dart';

import 'src/app/app.dart';

Future<void> main() async {
  runApp(const SplashApp());
  await Future.delayed(const Duration(seconds: 4));
  init();
  runApp(const VeganApp());
}
