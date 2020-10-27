import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'models.dart';
part 'retailer_model.g.dart';

@HiveType(typeId: 3)
@JsonSerializable(nullable: true)
class RetailerModel {
  factory RetailerModel.fromJson(Map<String, dynamic> json) =>
      _$RetailerModelFromJson(json);

  Map<String, dynamic> toJson() => _$RetailerModelToJson(this);

  RetailerModel({
    this.pagination,
    this.retailers,
  });

  @HiveField(0)
  @JsonKey(nullable: true)
  final Pagination pagination;
  @HiveField(1)
  @JsonKey(nullable: true)
  final List<Retailer> retailers;

  RetailerModel copyWith({
    Pagination pagination,
    List<Retailer> retailers,
    bool hasPrevious,
    bool needsTotal,
    int numberOfPages,
    int pageSize,
    int totalNumberOfResults,
  }) =>
      RetailerModel(
        pagination: pagination ?? this.pagination,
        retailers: retailers ?? this.retailers,
      );
}
