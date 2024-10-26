import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegan/src/app/injector.dart';
import 'package:vegan/src/features/video_hub/presentation/widget/vegan_app_bar.dart';

import '../bloc/video_hub_bloc.dart';
import 'video_hub_view.dart';

class VideoHubPage extends StatelessWidget {
  const VideoHubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(
          double.infinity,
          kToolbarHeight + 56.0,
        ),
        child: VeganAppBar(),
      ),
      body: SafeArea(
        child: BlocProvider<VideoHubBloc>(
          create: (_) => injector<VideoHubBloc>()
            ..add(
              const GetVideoHubEvent(),
            ),
          child: const VideoHubView(),
        ),
      ),
    );
  }
}
