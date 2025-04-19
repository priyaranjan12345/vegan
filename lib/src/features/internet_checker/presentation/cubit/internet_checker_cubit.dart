import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

part '../cubit/internet_checker_state.dart';

class InternetCheckerCubit extends Cubit<InternetCheckerState> {
  InternetCheckerCubit({
    required InternetConnection internetConnection,
  })  : _internetConnection = internetConnection,
        super(const InternetCheckerState());

  final InternetConnection _internetConnection;

  /// it will listen to the internet connection and emit the state accordingly
  void connectivityListener() {
    _internetConnection.onStatusChange.listen((status) {
      switch (status) {
        case InternetStatus.connected:
          if (!(state.connectivityStatus == ConnectivityStatus.initial)) {
            emit(
              state.copyWith(
                connectivityStatus: ConnectivityStatus.connected,
              ),
            );
          }
          break;
        case InternetStatus.disconnected:
          emit(
            state.copyWith(
              connectivityStatus: ConnectivityStatus.disconnected,
            ),
          );
          break;
      }
    });
  }

  void emitIdealState() {
    emit(
      state.copyWith(
        connectivityStatus: ConnectivityStatus.ideal,
      ),
    );
  }

  /// App State listener
  /// connected but no internet!

  @override
  void onChange(Change<InternetCheckerState> change) {
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
  }
}
