// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_model.dart';

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
