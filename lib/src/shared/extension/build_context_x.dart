import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  double get deviceWidth => MediaQuery.sizeOf(this).width;
  double get deviceHeight => MediaQuery.sizeOf(this).height;
}
