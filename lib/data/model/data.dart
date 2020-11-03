import 'package:cubit_app_flow/data/model/models.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@HiveType(typeId: 2)
@JsonSerializable(nullable: true)
class Data extends Object implements IndexHive {
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
  Data({
    this.indexHive,
    this.listItem,
    this.orderId,
  });

  @JsonKey(nullable: true)
  @HiveField(0)
  @override
  int indexHive;

  @JsonKey(nullable: true)
  @HiveField(1)
  final List<String> listItem;

  @JsonKey(nullable: true)
  @HiveField(2)
  final String orderId;

  Data copyWith({
    int indexHive,
    List<String> listItem,
    String orderId,
  }) =>
      Data(
        listItem: listItem ?? this.listItem,
        orderId: orderId ?? this.orderId,
      );
}
