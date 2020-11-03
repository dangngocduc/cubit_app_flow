// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MetaAdapter extends TypeAdapter<Meta> {
  @override
  final int typeId = 1;

  @override
  Meta read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Meta(
      indexHive: fields[0] as int,
      code: fields[1] as int,
      page: fields[2] as int,
      size: fields[3] as int,
      total: fields[4] as int,
      message: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Meta obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.indexHive)
      ..writeByte(1)
      ..write(obj.code)
      ..writeByte(2)
      ..write(obj.page)
      ..writeByte(3)
      ..write(obj.size)
      ..writeByte(4)
      ..write(obj.total)
      ..writeByte(5)
      ..write(obj.message);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MetaAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return Meta(
    indexHive: json['indexHive'] as int,
    code: json['code'] as int,
    page: json['page'] as int,
    size: json['size'] as int,
    total: json['total'] as int,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'indexHive': instance.indexHive,
      'code': instance.code,
      'page': instance.page,
      'size': instance.size,
      'total': instance.total,
      'message': instance.message,
    };
