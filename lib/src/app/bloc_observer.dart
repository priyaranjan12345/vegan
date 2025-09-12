import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talker/talker.dart';

class AppBlocObserver extends BlocObserver {
  AppBlocObserver({
    required this.taker,
  });

  final Talker taker;

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    taker.info('${bloc.runtimeType} $change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    taker.info('${bloc.runtimeType} $transition');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    taker.info('${bloc.runtimeType} $error $stackTrace');
    super.onError(bloc, error, stackTrace);
  }
}
