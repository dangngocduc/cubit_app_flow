// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RetailerAdapter extends TypeAdapter<Retailer> {
  @override
  final int typeId = 1;

  @override
  Retailer read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Retailer(
      adminAccount: fields[1] as String,
      contactAddress: fields[2] as String,
      createdTime: fields[3] as String,
      description: fields[4] as String,
      hasCreditLimit: fields[5] as bool,
      isActive: fields[6] as bool,
      merchantId: fields[7] as String,
      name: fields[8] as String,
      planVisitDate: fields[10] as String,
      referralCode: fields[11] as String,
      saleManName: fields[12] as String,
      shippingAddress: fields[13] as String,
      subChannel: fields[14] as String,
      uid: fields[15] as String,
      documents: fields[16] as String,
      opsRetailerSizes: fields[17] as String,
      lastVisitDate: fields[18] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Retailer obj) {
    writer
      ..writeByte(17)
      ..writeByte(1)
      ..write(obj.adminAccount)
      ..writeByte(2)
      ..write(obj.contactAddress)
      ..writeByte(3)
      ..write(obj.createdTime)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.hasCreditLimit)
      ..writeByte(6)
      ..write(obj.isActive)
      ..writeByte(7)
      ..write(obj.merchantId)
      ..writeByte(8)
      ..write(obj.name)
      ..writeByte(10)
      ..write(obj.planVisitDate)
      ..writeByte(11)
      ..write(obj.referralCode)
      ..writeByte(12)
      ..write(obj.saleManName)
      ..writeByte(13)
      ..write(obj.shippingAddress)
      ..writeByte(14)
      ..write(obj.subChannel)
      ..writeByte(15)
      ..write(obj.uid)
      ..writeByte(16)
      ..write(obj.documents)
      ..writeByte(17)
      ..write(obj.opsRetailerSizes)
      ..writeByte(18)
      ..write(obj.lastVisitDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RetailerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PaginationAdapter extends TypeAdapter<Pagination> {
  @override
  final int typeId = 2;

  @override
  Pagination read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Pagination()
      ..currentPage = fields[7] as int
      ..hasNext = fields[1] as bool
      ..hasPrevious = fields[2] as bool
      ..needsTotal = fields[3] as bool
      ..numberOfPages = fields[4] as int
      ..pageSize = fields[5] as int
      ..totalNumberOfResults = fields[6] as int;
  }

  @override
  void write(BinaryWriter writer, Pagination obj) {
    writer
      ..writeByte(7)
      ..writeByte(7)
      ..write(obj.currentPage)
      ..writeByte(1)
      ..write(obj.hasNext)
      ..writeByte(2)
      ..write(obj.hasPrevious)
      ..writeByte(3)
      ..write(obj.needsTotal)
      ..writeByte(4)
      ..write(obj.numberOfPages)
      ..writeByte(5)
      ..write(obj.pageSize)
      ..writeByte(6)
      ..write(obj.totalNumberOfResults);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaginationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
