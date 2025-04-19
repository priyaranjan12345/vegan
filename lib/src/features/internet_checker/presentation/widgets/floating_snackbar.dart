import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

enum FloatingSnackbarType {
  success,
  error,
  warning,
  info,
}

class FloatingSnackbar extends StatelessWidget {
  const FloatingSnackbar({
    super.key,
    required this.floatingSnackbar,
  });

  final Widget floatingSnackbar;

  FloatingSnackbar.success({
    super.key,
    required String message,
  }) : floatingSnackbar = _FloatingSnackbar(
          message: message,
          type: FloatingSnackbarType.success
        );

  FloatingSnackbar.error({
    super.key,
    required String message,
  }) : floatingSnackbar = _FloatingSnackbar(
          message: message,
          type: FloatingSnackbarType.error,
        );

  FloatingSnackbar.warning({
    super.key,
    required String message,
  }) : floatingSnackbar = _FloatingSnackbar(
          message: message,
          type: FloatingSnackbarType.warning,
        );

  FloatingSnackbar.info({
    super.key,
    required String message,
  }) : floatingSnackbar = _FloatingSnackbar(
          message: message,
          type: FloatingSnackbarType.info,
        );

  @override
  Widget build(BuildContext context) {
    return floatingSnackbar;
  }
}

class _FloatingSnackbar extends StatelessWidget {
  const _FloatingSnackbar({
    // super.key,
    required this.message,
    this.type = FloatingSnackbarType.success,
  });

  final String message;
  final FloatingSnackbarType type;

  ({Color backgroundColor, Color textColor}) getColor(
    FloatingSnackbarType type,
  ) {
    return switch (type) {
      // TODO: Change colors token.
      FloatingSnackbarType.warning => (
          backgroundColor: Colors.amber,
          textColor: Colors.black,
        ),
      FloatingSnackbarType.success => (
          backgroundColor: Colors.green,
          textColor: Colors.white,
        ),
      FloatingSnackbarType.error => (
          backgroundColor: AppColors.red,
          textColor: Colors.white,
        ),
      FloatingSnackbarType.info => (
          backgroundColor: AppColors.black,
          textColor: Colors.white,
        ),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      child: Card(
        elevation: 1.6,
        clipBehavior: Clip.hardEdge,
        child: Container(
          width: double.infinity,
          color: getColor(type).backgroundColor,
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: Text(
            message,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: getColor(type).textColor,
            ),
          ),
        ),
      ),
    );
  }
}
