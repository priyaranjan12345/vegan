import 'package:equatable/equatable.dart';

class MoodsEntity extends Equatable {
  final String label;
  final String browseId;
  final String params;

  const MoodsEntity({
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
