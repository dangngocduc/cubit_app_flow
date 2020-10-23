import 'package:json_annotation/json_annotation.dart';

import 'models.dart';
part 'common_model.g.dart';

@JsonSerializable(nullable: true)
class Retailer {
  factory Retailer.fromJson(Map<String, dynamic> json) =>
      _$RetailerFromJson(json);

  Map<String, dynamic> toJson() => _$RetailerToJson(this);

  Retailer({
    // this.address,
    this.adminAccount,
    // this.businessLine,
    // this.channelGroup,
    this.contactAddress,
    this.createdTime,
    this.description,
    this.hasCreditLimit,
    this.isActive,
    this.merchantId,
    this.name,
    this.planVisitDate,
    this.referralCode,
    this.saleManName,
    this.shippingAddress,
    this.subChannel,
    this.uid,
    this.documents,
    this.opsRetailerSizes,
    this.lastVisitDate,
  });

  // @JsonKey(nullable: true)
  // final Address address;
  @JsonKey(nullable: true)
  final String adminAccount;
  // @JsonKey(nullable: true)
  // final BusinessLine businessLine;
  // @JsonKey(nullable: true)
  // final ChannelGroup channelGroup;
  @JsonKey(nullable: true)
  final String contactAddress;
  @JsonKey(nullable: true)
  final String createdTime;
  @JsonKey(nullable: true)
  final String description;
  @JsonKey(nullable: true)
  final bool hasCreditLimit;
  @JsonKey(nullable: true)
  final bool isActive;
  @JsonKey(nullable: true)
  final String merchantId;
  @JsonKey(nullable: true)
  final String name;
  @JsonKey(nullable: true)
  final String planVisitDate;
  @JsonKey(nullable: true)
  final String referralCode;
  @JsonKey(nullable: true)
  final String saleManName;
  @JsonKey(nullable: true)
  final String shippingAddress;
  @JsonKey(nullable: true)
  final String subChannel;
  @JsonKey(nullable: true)
  final String uid;
  @JsonKey(nullable: true)
  final String documents;
  @JsonKey(nullable: true)
  final String opsRetailerSizes;
  @JsonKey(nullable: true)
  final String lastVisitDate;
}

@JsonSerializable(nullable: true)
class Pagination {
  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationToJson(this);

  Pagination({
    this.currentPage,
    this.hasNext,
    this.hasPrevious,
    this.needsTotal,
    this.numberOfPages,
    this.pageSize,
    this.totalNumberOfResults,
  });

  @JsonKey(nullable: true)
  final int currentPage;
  @JsonKey(nullable: true)
  final bool hasNext;
  @JsonKey(nullable: true)
  final bool hasPrevious;
  @JsonKey(nullable: true)
  final bool needsTotal;
  @JsonKey(nullable: true)
  final int numberOfPages;
  @JsonKey(nullable: true)
  final int pageSize;
  @JsonKey(nullable: true)
  final int totalNumberOfResults;
}
