import 'package:equatable/equatable.dart';

class UniqueId extends Equatable {
  const UniqueId(this.uniqueID);

  final String uniqueID;

  @override
  List<Object?> get props => [uniqueID];
}
