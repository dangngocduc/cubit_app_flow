import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import 'hives.dart';
part 'retailer_hive.g.dart';

@HiveType(typeId: 1)
class RetailerHive extends HiveObject {
  RetailerHive({
    this.pagination,
    this.retailers,
  });

  @HiveField(1)
  Pagination pagination;
  @HiveField(2)
  List<RetailerHive> retailers;
}
