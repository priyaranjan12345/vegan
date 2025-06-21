import 'package:equatable/equatable.dart';

class MoodEntity extends Equatable {
  final String label;
  final String browseId;
  final String params;

  const MoodEntity({
    required this.label,
    required this.browseId,
    required this.params,
  });

  @override
  List<Object?> get props => [
        label,
        browseId,
        params,
      ];
}
