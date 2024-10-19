import 'dart:ui';

import 'package:flutter/material.dart';

/// Custome scroll physics
class CustomScrollPhysics extends ScrollPhysics {
  const CustomScrollPhysics({
    required this.landscapeFraction,
    required this.portraitFraction,
    super.parent,
  });

  final double landscapeFraction;
  final double portraitFraction;

  @override
  CustomScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return CustomScrollPhysics(
      landscapeFraction: landscapeFraction,
      portraitFraction: portraitFraction,
      parent: buildParent(ancestor),
    );
  }

  double _getTargetPixels({
    required ScrollMetrics position,
    required Tolerance tolerance,
    required double velocity,
    required double portion,
    required double itemWidth,
  }) {
    /// calculate page width
    double page = position.pixels / itemWidth;

    if (velocity < -tolerance.velocity) {
      page -= 0.5;
    } else if (velocity > tolerance.velocity) {
      page += 0.5;
    }

    /// target pixels
    return (page.roundToDouble() * itemWidth) - portion;
  }

  /// return device orientation
  /// based on device physical width and height
  Orientation getOrientation() {
    final width = PlatformDispatcher.instance.views.first.physicalSize.width;
    final height = PlatformDispatcher.instance.views.first.physicalSize.height;

    if (width < height) {
      return Orientation.portrait;
    }

    return Orientation.landscape;
  }

  @override
  Simulation? createBallisticSimulation(
    ScrollMetrics position,
    double velocity,
  ) {
    final orientation = getOrientation();

    final itemWidth = position.viewportDimension *
        (orientation == Orientation.portrait
            ? portraitFraction
            : landscapeFraction);

    if ((velocity <= 0.0 && position.pixels <= position.minScrollExtent) ||
        (velocity >= 0.0 && position.pixels >= position.maxScrollExtent)) {
      return super.createBallisticSimulation(position, velocity);
    }

    final Tolerance tolerance = toleranceFor(position);
    final portion = (position.viewportDimension - itemWidth) / 2;

    /// get target value
    final double target = _getTargetPixels(
      position: position,
      tolerance: tolerance,
      velocity: velocity,
      portion: portion,
      itemWidth: itemWidth,
    );

    if (target != position.pixels) {
      return ScrollSpringSimulation(
        spring,
        position.pixels,
        target,
        velocity,
        tolerance: tolerance,
      );
    }

    return null;
  }

  @override
  bool get allowImplicitScrolling => false;
}
