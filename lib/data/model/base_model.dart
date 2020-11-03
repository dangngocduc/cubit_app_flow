import 'package:cubit_app_flow/data/model/models.dart';
// import 'package:hive/hive.dart';
// import 'package:json_annotation/json_annotation.dart';

/*
  {
    "meta": {
        "code": 200,
        "message": "OK"
    },
    "data": {
        "list_item": [
                "item": "1",
                "item": "2",
                "item": "3",
        ],
        "order_id": "20201023T003IDN56VMJ",
        "expired_at": 1603424643,
    }
  }
*/
class BaseModel<T extends Object> implements IndexHive {
  BaseModel({
    this.indexHive,
    this.meta,
    this.data,
  });

  @override
  int indexHive;

  final Meta meta;

  final T data;

  BaseModel copyWith<T>({
    int indexHive,
    Meta meta,
    T data,
  }) =>
      BaseModel(
        indexHive: indexHive ?? this.indexHive,
        meta: meta ?? this.meta,
        data: data ?? this.data,
      );

  factory BaseModel.fromJson(Map<String, dynamic> json) {
    return BaseModel(
      meta: json["meta"] as Meta,
      data: (json['data'] as T),
    );
  }
}
