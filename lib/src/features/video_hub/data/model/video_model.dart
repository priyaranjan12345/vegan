import 'dart:convert';

class VideoModel {
  final String id;
  final String title;
  final String thumbnailUrl;
  final String duration;
  final String uploadTime;
  final String views;
  final String author;
  final String videoUrl;
  final String description;
  final String subscriber;
  final bool isLive;

  const VideoModel({
    required this.id,
    required this.title,
    required this.thumbnailUrl,
    required this.duration,
    required this.uploadTime,
    required this.views,
    required this.author,
    required this.videoUrl,
    required this.description,
    required this.subscriber,
    required this.isLive,
  });

  VideoModel copyWith({
    String? id,
    String? title,
    String? thumbnailUrl,
    String? duration,
    String? uploadTime,
    String? views,
    String? author,
    String? videoUrl,
    String? description,
    String? subscriber,
    bool? isLive,
  }) {
    return VideoModel(
      id: id ?? this.id,
      title: title ?? this.title,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      duration: duration ?? this.duration,
      uploadTime: uploadTime ?? this.uploadTime,
      views: views ?? this.views,
      author: author ?? this.author,
      videoUrl: videoUrl ?? this.videoUrl,
      description: description ?? this.description,
      subscriber: subscriber ?? this.subscriber,
      isLive: isLive ?? this.isLive,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'thumbnailUrl': thumbnailUrl,
      'duration': duration,
      'uploadTime': uploadTime,
      'views': views,
      'author': author,
      'videoUrl': videoUrl,
      'description': description,
      'subscriber': subscriber,
      'isLive': isLive,
    };
  }

  factory VideoModel.fromMap(Map<String, dynamic> map) {
    return VideoModel(
      id: map['id'] as String,
      title: map['title'] as String,
      thumbnailUrl: map['thumbnailUrl'] as String,
      duration: map['duration'] as String,
      uploadTime: map['uploadTime'] as String,
      views: map['views'] as String,
      author: map['author'] as String,
      videoUrl: map['videoUrl'] as String,
      description: map['description'] as String,
      subscriber: map['subscriber'] as String,
      isLive: map['isLive'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory VideoModel.fromJson(String source) =>
      VideoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'VideoModel(id: $id, title: $title, thumbnailUrl: $thumbnailUrl, duration: $duration, uploadTime: $uploadTime, views: $views, author: $author, videoUrl: $videoUrl, description: $description, subscriber: $subscriber, isLive: $isLive)';
  }

  @override
  bool operator ==(covariant VideoModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.thumbnailUrl == thumbnailUrl &&
        other.duration == duration &&
        other.uploadTime == uploadTime &&
        other.views == views &&
        other.author == author &&
        other.videoUrl == videoUrl &&
        other.description == description &&
        other.subscriber == subscriber &&
        other.isLive == isLive;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        thumbnailUrl.hashCode ^
        duration.hashCode ^
        uploadTime.hashCode ^
        views.hashCode ^
        author.hashCode ^
        videoUrl.hashCode ^
        description.hashCode ^
        subscriber.hashCode ^
        isLive.hashCode;
  }
}
