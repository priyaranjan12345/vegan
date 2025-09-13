import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/internet_checker_cubit.dart';
import '../widgets/floating_snackbar.dart';

class InternetCheckerView extends StatelessWidget {
  const InternetCheckerView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 600),
      reverseDuration: const Duration(milliseconds: 600),
      switchInCurve: Curves.bounceIn,
      switchOutCurve: Curves.bounceOut,
      child: BlocConsumer<InternetCheckerCubit, InternetCheckerState>(
        listenWhen: (prev, current) => prev != current,
        listener: (_, state) {
          if (state.connectivityStatus == ConnectivityStatus.connected) {
            Future.delayed(const Duration(seconds: 4), () {
              /// before set to ideal it will check if the internet is still connected
              if (context.mounted) {
                final isConnected =
                    context
                        .read<InternetCheckerCubit>()
                        .state
                        .connectivityStatus ==
                    ConnectivityStatus.connected;

                if (isConnected) {
                  context.read<InternetCheckerCubit>().emitIdealState();
                }
              }
            });
          }
        },
        builder: (context, state) {
          return switch (state.connectivityStatus) {
            ConnectivityStatus.connected => FloatingSnackbar.success(
              message: 'Internet is available',
              onCancel: () =>
                  context.read<InternetCheckerCubit>().emitIdealState(),
            ),
            ConnectivityStatus.disconnected => FloatingSnackbar.error(
              message: 'Internet is not available!',
              onCancel: () =>
                  context.read<InternetCheckerCubit>().emitIdealState(),
            ),
            ConnectivityStatus.unknown => FloatingSnackbar.warning(
              message: 'Unknow error',
              onCancel: () =>
                  context.read<InternetCheckerCubit>().emitIdealState(),
            ),
            ConnectivityStatus.initial ||
            ConnectivityStatus.ideal => const SizedBox.shrink(),
          };
        },
      ),
    );
  }
}
