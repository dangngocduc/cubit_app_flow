// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retailer_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RetailerModelAdapter extends TypeAdapter<RetailerModel> {
  @override
  final int typeId = 3;

  @override
  RetailerModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RetailerModel(
      pagination: fields[0] as Pagination,
      retailers: (fields[1] as List)?.cast<Retailer>(),
    );
  }

  @override
  void write(BinaryWriter writer, RetailerModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.pagination)
      ..writeByte(1)
      ..write(obj.retailers);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RetailerModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
