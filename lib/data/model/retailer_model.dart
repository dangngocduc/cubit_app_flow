import 'package:json_annotation/json_annotation.dart';

import 'models.dart';
part 'retailer_model.g.dart';

@JsonSerializable(nullable: true)
class RetailerModel {
  factory RetailerModel.fromJson(Map<String, dynamic> json) =>
      _$RetailerModelFromJson(json);

  Map<String, dynamic> toJson() => _$RetailerModelToJson(this);

  RetailerModel({
    this.pagination,
    this.retailers,
  });

  @JsonKey(nullable: true)
  final Pagination pagination;
  @JsonKey(nullable: true)
  final List<Retailer> retailers;
}
