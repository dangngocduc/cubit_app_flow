import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'photo.g.dart';

@HiveType(typeId: 2)
@JsonSerializable(nullable: true)
class Photo {
  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoToJson(this);

  @JsonKey(nullable: true)
  @HiveField(0)
  final int albumId;
  @JsonKey(nullable: true)
  @HiveField(1)
  final int id;
  @JsonKey(nullable: true)
  @HiveField(2)
  final String title;
  @JsonKey(nullable: true)
  @HiveField(3)
  final String url;
  @JsonKey(nullable: true)
  @HiveField(4)
  final String thumbnailUrl;

  Photo({
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  });

  Photo copyWith({
    int albumId,
    int id,
    String title,
    String url,
    String thumbnailUrl,
  }) =>
      Photo(
        albumId: albumId ?? this.albumId,
        id: id ?? this.id,
        title: title ?? this.title,
        url: url ?? this.url,
        thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      );
}
