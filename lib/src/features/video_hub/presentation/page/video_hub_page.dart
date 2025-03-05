import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegan/src/app/injector.dart';

import '../bloc/video_hub_bloc.dart';
import 'video_hub_view.dart';

@RoutePage()
class VideoHubPage extends StatelessWidget {
  const VideoHubPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<VideoHubBloc>(
        create: (_) => injector<VideoHubBloc>()..add(const GetVideoHubEvent()),
        child: const VideoHubView(),
      ),
    );
  }
}
