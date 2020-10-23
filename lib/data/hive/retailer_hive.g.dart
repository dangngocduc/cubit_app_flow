// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retailer_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RetailerHiveAdapter extends TypeAdapter<RetailerHive> {
  @override
  final int typeId = 1;

  @override
  RetailerHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RetailerHive();
  }

  @override
  void write(BinaryWriter writer, RetailerHive obj) {
    writer..writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RetailerHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
