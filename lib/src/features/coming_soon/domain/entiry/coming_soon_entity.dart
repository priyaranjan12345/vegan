import 'package:equatable/equatable.dart';

class ComingSoonEntity extends Equatable {
  const ComingSoonEntity({
    required this.imageUrl,
    required this.label,
    required this.title,
    required this.desc,
    this.tags,
  });

  final String imageUrl;
  final String label;
  final String title;
  final String desc;
  final List<String>? tags;

  @override
  List<Object?> get props => [
        imageUrl,
        label,
        title,
        desc,
        tags,
      ];
}
