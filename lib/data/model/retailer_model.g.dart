// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retailer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetailerModel _$RetailerModelFromJson(Map<String, dynamic> json) {
  return RetailerModel(
    pagination: json['pagination'] == null
        ? null
        : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    retailers: (json['retailers'] as List)
        ?.map((e) =>
            e == null ? null : Retailer.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RetailerModelToJson(RetailerModel instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'retailers': instance.retailers,
    };
