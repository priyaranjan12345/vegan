import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegan/src/app/injector.dart';
import 'package:vegan/src/core/theme/app_colors.dart';
import 'package:vegan/src/features/coming_soon/presentation/widgets/coming_soon_tile.dart';

import '../bloc/coming_soon_bloc.dart';

@RoutePage()
class ComingSoonPage extends StatelessWidget {
  const ComingSoonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(12.0),
          child: CircleAvatar(
            backgroundColor: AppColors.red,
            child: Icon(Icons.notifications),
          ),
        ),
        title: const Text(
          'Notifications',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: BlocProvider<ComingSoonBloc>(
        create: (context) =>
            injector<ComingSoonBloc>()..add(const GetComingSoonVideosEvent()),
        child: const ComingSoonWrapper(),
      ),
    );
  }
}

class ComingSoonWrapper extends StatelessWidget {
  const ComingSoonWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ComingSoonBloc, ComingSoonState>(
      builder: (context, state) => switch (state) {
        ComingSoonInitial() || ComingSoonLoading() => const Center(
            child: RepaintBoundary(
              child: CircularProgressIndicator(),
            ),
          ),
        ComingSoonLoaded() => ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            itemCount: state.comingSoonVideos.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: ComingSoonTile(
                comingSoonEntity: state.comingSoonVideos[index],
              ),
            ),
          ),
        ComingSoonError() => Container(),
      },
    );
  }
}
