import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../data/model/models.dart';

part 'network_service.g.dart';

@RestApi(baseUrl: '')
abstract class NetworkService {
  factory NetworkService(Dio dio, {String baseUrl}) = _NetworkService;

  /// RetailerController
  @GET('supplier/retailer/list')
  Future<RetailerModel> getListRetailer({
    @Query('fromDate') String createdFrom,
    @Query('toDate') String createdTo,
    @Query('sortCode') String sortCode = 'byPlacedDate',
    @Query('sortDirection') String sortDirection = 'DESC',
    @Query('pageIndex') int pageIndex = 0,
    @Query('pageSize') int pageSize = 20,
    @Query('uid') String uid,
    @Query('name') String name,
    @Query('phoneNumber') String phoneNumber,
    @Query('referalCode') String referalCode,
    @Query('size') String size,
    @Query('hadSuccessOrder') String hadSuccessOrder,
    @Query('shippingMethod') String shippingMethod,
    @Query('warehouseCode') String warehouse,
  });
}
