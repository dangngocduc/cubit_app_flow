import 'package:cubit_app_flow/data/model/index_hive.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'common_model.g.dart';

@HiveType(typeId: 0)
@JsonSerializable(nullable: true)
class Retailer implements IndexHive {
  factory Retailer.fromJson(Map<String, dynamic> json) =>
      _$RetailerFromJson(json);

  Map<String, dynamic> toJson() => _$RetailerToJson(this);

  Retailer({
    this.indexHive,
    this.adminAccount,
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

  @override
  @JsonKey(nullable: true)
  @HiveField(0)
  int indexHive;

  @JsonKey(nullable: true)
  @HiveField(1)
  final String contactAddress;
  @JsonKey(nullable: true)
  @HiveField(2)
  final String createdTime;
  @JsonKey(nullable: true)
  @HiveField(3)
  final String description;
  @JsonKey(nullable: true)
  @HiveField(4)
  final bool hasCreditLimit;
  @JsonKey(nullable: true)
  @HiveField(5)
  final bool isActive;
  @JsonKey(nullable: true)
  @HiveField(6)
  final String merchantId;
  @JsonKey(nullable: true)
  @HiveField(7)
  final String name;
  @JsonKey(nullable: true)
  @HiveField(8)
  final String planVisitDate;
  @JsonKey(nullable: true)
  @HiveField(9)
  final String referralCode;
  @JsonKey(nullable: true)
  @HiveField(10)
  final String saleManName;
  @JsonKey(nullable: true)
  @HiveField(11)
  final String shippingAddress;
  @JsonKey(nullable: true)
  @HiveField(12)
  final String subChannel;
  @JsonKey(nullable: true)
  @HiveField(13)
  final String uid;
  @JsonKey(nullable: true)
  @HiveField(14)
  final String documents;
  @JsonKey(nullable: true)
  @HiveField(15)
  final String opsRetailerSizes;
  @JsonKey(nullable: true)
  @HiveField(16)
  final String lastVisitDate;
  @JsonKey(nullable: true)
  @HiveField(17)
  final String adminAccount;

  Retailer copyWith({
    int indexHive,
    String adminAccount,
    String contactAddress,
    String createdTime,
    String description,
    bool hasCreditLimit,
    bool isActive,
    String merchantId,
    String name,
    String planVisitDate,
    String referralCode,
    String saleManName,
    String shippingAddress,
    String subChannel,
    String uid,
    String documents,
    String opsRetailerSizes,
    String lastVisitDate,
  }) =>
      Retailer(
        indexHive: indexHive ?? this.indexHive,
        adminAccount: adminAccount ?? this.adminAccount,
        contactAddress: contactAddress ?? this.contactAddress,
        createdTime: createdTime ?? this.createdTime,
        description: description ?? this.description,
        hasCreditLimit: hasCreditLimit ?? this.hasCreditLimit,
        isActive: isActive ?? this.isActive,
        merchantId: merchantId ?? this.merchantId,
        name: name ?? this.name,
        planVisitDate: planVisitDate ?? this.planVisitDate,
        referralCode: referralCode ?? this.referralCode,
        saleManName: saleManName ?? this.saleManName,
        shippingAddress: shippingAddress ?? this.shippingAddress,
        subChannel: subChannel ?? this.subChannel,
        uid: uid ?? this.uid,
        documents: documents ?? this.documents,
        opsRetailerSizes: opsRetailerSizes ?? this.opsRetailerSizes,
        lastVisitDate: lastVisitDate ?? this.lastVisitDate,
      );
}

@HiveType(typeId: 1)
@JsonSerializable(nullable: true)
class Pagination implements IndexHive {
  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationToJson(this);

  Pagination({
    this.indexHive,
    this.currentPage,
    this.hasNext,
    this.hasPrevious,
    this.needsTotal,
    this.numberOfPages,
    this.pageSize,
    this.totalNumberOfResults,
  });

  @override
  @JsonKey(nullable: true)
  @HiveField(0)
  int indexHive;
  @JsonKey(nullable: true)
  @HiveField(7)
  final int currentPage;
  @JsonKey(nullable: true)
  @HiveField(1)
  final bool hasNext;
  @JsonKey(nullable: true)
  @HiveField(2)
  final bool hasPrevious;
  @JsonKey(nullable: true)
  @HiveField(3)
  final bool needsTotal;
  @JsonKey(nullable: true)
  @HiveField(4)
  final int numberOfPages;
  @JsonKey(nullable: true)
  @HiveField(5)
  final int pageSize;
  @JsonKey(nullable: true)
  @HiveField(6)
  final int totalNumberOfResults;

  Pagination copyWith({
    int indexHive,
    int currentPage,
    bool hasNext,
    bool hasPrevious,
    bool needsTotal,
    int numberOfPages,
    int pageSize,
    int totalNumberOfResults,
  }) =>
      Pagination(
        indexHive: indexHive ?? this.indexHive,
        currentPage: currentPage ?? this.currentPage,
        hasNext: hasNext ?? this.hasNext,
        hasPrevious: hasPrevious ?? this.hasPrevious,
        needsTotal: needsTotal ?? this.needsTotal,
        numberOfPages: numberOfPages ?? this.numberOfPages,
        pageSize: pageSize ?? this.pageSize,
        totalNumberOfResults: totalNumberOfResults ?? this.totalNumberOfResults,
      );
}
