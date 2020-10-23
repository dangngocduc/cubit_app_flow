import 'package:hive/hive.dart';
part 'common_hive.g.dart';

@HiveType(typeId: 1)
class Retailer extends HiveObject {
  @HiveField(1)
  String adminAccount;
  @HiveField(2)
  String contactAddress;
  @HiveField(3)
  String createdTime;
  @HiveField(4)
  String description;
  @HiveField(5)
  bool hasCreditLimit;
  @HiveField(6)
  bool isActive;
  @HiveField(7)
  String merchantId;
  @HiveField(8)
  String name;
  @HiveField(10)
  String planVisitDate;
  @HiveField(11)
  String referralCode;
  @HiveField(12)
  String saleManName;
  @HiveField(13)
  String shippingAddress;
  @HiveField(14)
  String subChannel;
  @HiveField(15)
  String uid;
  @HiveField(16)
  String documents;
  @HiveField(17)
  String opsRetailerSizes;
  @HiveField(18)
  String lastVisitDate;

  Retailer({
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
}

@HiveType(typeId: 2)
class Pagination extends HiveObject {
  @HiveField(7)
  int currentPage;
  @HiveField(1)
  bool hasNext;
  @HiveField(2)
  bool hasPrevious;
  @HiveField(3)
  bool needsTotal;
  @HiveField(4)
  int numberOfPages;
  @HiveField(5)
  int pageSize;
  @HiveField(6)
  int totalNumberOfResults;
}
