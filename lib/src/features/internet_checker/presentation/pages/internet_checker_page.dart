import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import '../cubit/internet_checker_cubit.dart';
import 'internet_checker_view.dart';

class InternetCheckerPage extends StatelessWidget {
  const InternetCheckerPage({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Align(
          alignment: Alignment.topCenter,
          child: BlocProvider(
            create: (_) => InternetCheckerCubit(
              internetConnection: InternetConnection(),
            )..connectivityListener(),
            child: const InternetCheckerView(),
          ),
        ),
      ],
    );
  }
}
