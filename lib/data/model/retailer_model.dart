import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'models.dart';
part 'retailer_model.g.dart';

@HiveType(typeId: 3)
@JsonSerializable(nullable: true)
class RetailerModel implements IndexHive {
  factory RetailerModel.fromJson(Map<String, dynamic> json) =>
      _$RetailerModelFromJson(json);

  Map<String, dynamic> toJson() => _$RetailerModelToJson(this);

  RetailerModel({
    this.indexHive,
    this.pagination,
    this.retailers,
  });

  @override
  @JsonKey(nullable: true, defaultValue: 0)
  @HiveField(0)
  int indexHive;
  @HiveField(2)
  @JsonKey(nullable: true)
  final Pagination pagination;
  @HiveField(1)
  @JsonKey(nullable: true)
  final List<Retailer> retailers;

  RetailerModel copyWith({
    int indexHive,
    Pagination pagination,
    List<Retailer> retailers,
  }) =>
      RetailerModel(
        indexHive: indexHive ?? this.indexHive,
        pagination: pagination ?? this.pagination,
        retailers: retailers ?? this.retailers,
      );
}
