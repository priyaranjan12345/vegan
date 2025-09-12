import 'package:flutter/material.dart';

import 'src/app/app.dart';

Future<void> main() async {
  runApp(const SplashApp());
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const VeganApp());
}
