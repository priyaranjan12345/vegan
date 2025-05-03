import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegan/src/app/app.dart';
import 'package:vegan/src/features/video_hub/presentation/bloc/moods_cubit/moods_cubit.dart';

import '../../widget/moods_chips.dart';
import 'moods_loading_ui.dart';

class MoodsStateUi extends StatelessWidget {
  const MoodsStateUi({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => injector<MoodsCubit>()..getMoods(),
      child: const MoodsWrapper(),
    );
  }
}

class MoodsWrapper extends StatelessWidget {
  const MoodsWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoodsCubit, MoodsState>(
      builder: (context, state) => switch (state) {
        MoodsInitialState() || MoodsLoadingState() => const MoodsLoadingUi(),
        MoodsLoadedState() => MoodsChips(
            moods: state.moods,
          ),
        MoodsErrorState() => Container(),
      },
    );
  }
}
