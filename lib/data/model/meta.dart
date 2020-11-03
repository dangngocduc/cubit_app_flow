import 'package:cubit_app_flow/data/model/models.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'meta.g.dart';

@HiveType(typeId: 1)
@JsonSerializable(nullable: true)
class Meta extends Object implements IndexHive {
  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
  Meta({
    this.indexHive,
    this.code,
    this.page,
    this.size,
    this.total,
    this.message,
  });

  @override
  @JsonKey(nullable: true)
  @HiveField(0)
  int indexHive;

  @JsonKey(nullable: true)
  @HiveField(1)
  final int code;
  @JsonKey(nullable: true)
  @HiveField(2)
  final int page;
  @JsonKey(nullable: true)
  @HiveField(3)
  final int size;
  @JsonKey(nullable: true)
  @HiveField(4)
  final int total;
  @JsonKey(nullable: true)
  @HiveField(5)
  final String message;

  Meta copyWith({
    int indexHive,
    int code,
    int page,
    int size,
    int total,
    String message,
  }) =>
      Meta(
        indexHive: indexHive ?? this.indexHive,
        code: code ?? this.code,
        page: page ?? this.page,
        size: size ?? this.size,
        total: total ?? this.total,
        message: message ?? this.message,
      );
}
