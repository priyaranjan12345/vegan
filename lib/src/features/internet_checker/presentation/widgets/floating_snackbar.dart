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
    this.onCancel,
  });

  final Widget floatingSnackbar;
  final VoidCallback? onCancel;

  FloatingSnackbar.success({
    super.key,
    required String message,
    this.onCancel,
  }) : floatingSnackbar = _FloatingSnackbar(
         message: message,
         type: FloatingSnackbarType.success,
         title: 'Success',
         onCancel: onCancel,
       );

  FloatingSnackbar.error({
    super.key,
    required String message,
    this.onCancel,
  }) : floatingSnackbar = _FloatingSnackbar(
         message: message,
         type: FloatingSnackbarType.error,
         title: 'Error occurred',
         onCancel: onCancel,
       );

  FloatingSnackbar.warning({
    super.key,
    required String message,
    this.onCancel,
  }) : floatingSnackbar = _FloatingSnackbar(
         message: message,
         type: FloatingSnackbarType.warning,
         title: 'Warning',
         onCancel: onCancel,
       );

  FloatingSnackbar.info({
    super.key,
    required String message,
    this.onCancel,
  }) : floatingSnackbar = _FloatingSnackbar(
         message: message,
         type: FloatingSnackbarType.info,
         title: 'Info',
         onCancel: onCancel,
       );

  @override
  Widget build(BuildContext context) {
    return floatingSnackbar;
  }
}

class _FloatingSnackbar extends StatelessWidget {
  const _FloatingSnackbar({
    required this.message,
    this.type = FloatingSnackbarType.success,
    this.title,
    this.onCancel,
  });

  final String? title;
  final String message;
  final FloatingSnackbarType type;
  final VoidCallback? onCancel;

  ({Color backgroundColor, Color textColor}) getColor(
    FloatingSnackbarType type,
  ) {
    return switch (type) {
      FloatingSnackbarType.warning => (
        backgroundColor: AppColors.warning,
        textColor: AppColors.black,
      ),
      FloatingSnackbarType.success => (
        backgroundColor: AppColors.success,
        textColor: AppColors.white,
      ),
      FloatingSnackbarType.error => (
        backgroundColor: AppColors.error,
        textColor: AppColors.white,
      ),
      FloatingSnackbarType.info => (
        backgroundColor: AppColors.black,
        textColor: AppColors.white,
      ),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      child: Material(
        elevation: 6,
        clipBehavior: Clip.hardEdge,
        borderRadius: const BorderRadius.all(
          Radius.circular(4),
        ),
        child: ListTile(
          dense: true,
          tileColor: getColor(type).backgroundColor,
          leading: const Icon(Icons.info_outline_rounded),
          title: Text(
            title ?? '',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          subtitle: Text(message),
          trailing: TextButton(
            onPressed: onCancel,
            style: TextButton.styleFrom(
              minimumSize: Size.zero,
              padding: EdgeInsets.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: const Text(
              'Cancel',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showAlert(BuildContext context, Widget content) {
    ScaffoldMessenger.maybeOf(context)?.showSnackBar(
      SnackBar(
        margin: EdgeInsets.zero,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        elevation: 0,
        content: content,
      ),
    );
  }
}
