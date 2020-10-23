// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _NetworkService implements NetworkService {
  _NetworkService(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl;

  @override
  getListRetailer(
      {createdFrom,
      createdTo,
      sortCode = 'byPlacedDate',
      sortDirection = 'DESC',
      pageIndex = 0,
      pageSize = 20,
      uid,
      name,
      phoneNumber,
      referalCode,
      size,
      hadSuccessOrder,
      shippingMethod,
      warehouse}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'fromDate': createdFrom,
      r'toDate': createdTo,
      r'sortCode': sortCode,
      r'sortDirection': sortDirection,
      r'pageIndex': pageIndex,
      r'pageSize': pageSize,
      r'uid': uid,
      r'name': name,
      r'phoneNumber': phoneNumber,
      r'referalCode': referalCode,
      r'size': size,
      r'hadSuccessOrder': hadSuccessOrder,
      r'shippingMethod': shippingMethod,
      r'warehouseCode': warehouse
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        'supplier/retailer/list',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = RetailerModel.fromJson(_result.data);
    return value;
  }
}
