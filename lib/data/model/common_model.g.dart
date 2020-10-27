// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RetailerAdapter extends TypeAdapter<Retailer> {
  @override
  final int typeId = 0;

  @override
  Retailer read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Retailer(
      adminAccount: fields[0] as String,
      contactAddress: fields[1] as String,
      createdTime: fields[2] as String,
      description: fields[3] as String,
      hasCreditLimit: fields[4] as bool,
      isActive: fields[5] as bool,
      merchantId: fields[6] as String,
      name: fields[7] as String,
      planVisitDate: fields[8] as String,
      referralCode: fields[9] as String,
      saleManName: fields[10] as String,
      shippingAddress: fields[11] as String,
      subChannel: fields[12] as String,
      uid: fields[13] as String,
      documents: fields[14] as String,
      opsRetailerSizes: fields[15] as String,
      lastVisitDate: fields[16] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Retailer obj) {
    writer
      ..writeByte(17)
      ..writeByte(0)
      ..write(obj.adminAccount)
      ..writeByte(1)
      ..write(obj.contactAddress)
      ..writeByte(2)
      ..write(obj.createdTime)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.hasCreditLimit)
      ..writeByte(5)
      ..write(obj.isActive)
      ..writeByte(6)
      ..write(obj.merchantId)
      ..writeByte(7)
      ..write(obj.name)
      ..writeByte(8)
      ..write(obj.planVisitDate)
      ..writeByte(9)
      ..write(obj.referralCode)
      ..writeByte(10)
      ..write(obj.saleManName)
      ..writeByte(11)
      ..write(obj.shippingAddress)
      ..writeByte(12)
      ..write(obj.subChannel)
      ..writeByte(13)
      ..write(obj.uid)
      ..writeByte(14)
      ..write(obj.documents)
      ..writeByte(15)
      ..write(obj.opsRetailerSizes)
      ..writeByte(16)
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
  final int typeId = 1;

  @override
  Pagination read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Pagination(
      currentPage: fields[0] as int,
      hasNext: fields[1] as bool,
      hasPrevious: fields[2] as bool,
      needsTotal: fields[3] as bool,
      numberOfPages: fields[4] as int,
      pageSize: fields[5] as int,
      totalNumberOfResults: fields[6] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Pagination obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
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

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Retailer _$RetailerFromJson(Map<String, dynamic> json) {
  return Retailer(
    adminAccount: json['adminAccount'] as String,
    contactAddress: json['contactAddress'] as String,
    createdTime: json['createdTime'] as String,
    description: json['description'] as String,
    hasCreditLimit: json['hasCreditLimit'] as bool,
    isActive: json['isActive'] as bool,
    merchantId: json['merchantId'] as String,
    name: json['name'] as String,
    planVisitDate: json['planVisitDate'] as String,
    referralCode: json['referralCode'] as String,
    saleManName: json['saleManName'] as String,
    shippingAddress: json['shippingAddress'] as String,
    subChannel: json['subChannel'] as String,
    uid: json['uid'] as String,
    documents: json['documents'] as String,
    opsRetailerSizes: json['opsRetailerSizes'] as String,
    lastVisitDate: json['lastVisitDate'] as String,
  );
}

Map<String, dynamic> _$RetailerToJson(Retailer instance) => <String, dynamic>{
      'adminAccount': instance.adminAccount,
      'contactAddress': instance.contactAddress,
      'createdTime': instance.createdTime,
      'description': instance.description,
      'hasCreditLimit': instance.hasCreditLimit,
      'isActive': instance.isActive,
      'merchantId': instance.merchantId,
      'name': instance.name,
      'planVisitDate': instance.planVisitDate,
      'referralCode': instance.referralCode,
      'saleManName': instance.saleManName,
      'shippingAddress': instance.shippingAddress,
      'subChannel': instance.subChannel,
      'uid': instance.uid,
      'documents': instance.documents,
      'opsRetailerSizes': instance.opsRetailerSizes,
      'lastVisitDate': instance.lastVisitDate,
    };

Pagination _$PaginationFromJson(Map<String, dynamic> json) {
  return Pagination(
    currentPage: json['currentPage'] as int,
    hasNext: json['hasNext'] as bool,
    hasPrevious: json['hasPrevious'] as bool,
    needsTotal: json['needsTotal'] as bool,
    numberOfPages: json['numberOfPages'] as int,
    pageSize: json['pageSize'] as int,
    totalNumberOfResults: json['totalNumberOfResults'] as int,
  );
}

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'hasNext': instance.hasNext,
      'hasPrevious': instance.hasPrevious,
      'needsTotal': instance.needsTotal,
      'numberOfPages': instance.numberOfPages,
      'pageSize': instance.pageSize,
      'totalNumberOfResults': instance.totalNumberOfResults,
    };
