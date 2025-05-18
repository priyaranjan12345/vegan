import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  double get deviceWidth => MediaQuery.sizeOf(this).width;
  double get deviceHeight => MediaQuery.sizeOf(this).height;

  ThemeData get theme => Theme.of(this);

  bool get isLandscape =>
      MediaQuery.orientationOf(this) == Orientation.landscape;

  bool get isPortrait => MediaQuery.orientationOf(this) == Orientation.portrait;

  TextTheme get textTheme => Theme.of(this).textTheme;
}
