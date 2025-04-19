part of 'internet_checker_cubit.dart';

enum ConnectivityStatus {
  connected,
  disconnected,
  ideal,
  unknown,
  initial,
}

class InternetCheckerState extends Equatable {
  const InternetCheckerState({
    this.connectivityStatus = ConnectivityStatus.initial,
  });

  final ConnectivityStatus connectivityStatus;

  InternetCheckerState copyWith({
    ConnectivityStatus? connectivityStatus,
  }) {
    return InternetCheckerState(
      connectivityStatus: connectivityStatus ?? this.connectivityStatus,
    );
  }

  @override
  List<Object?> get props => [connectivityStatus];
}
