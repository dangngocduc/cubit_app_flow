// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _PhotoService implements PhotoService {
  _PhotoService(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    this.baseUrl ??= 'https://jsonplaceholder.typicode.com/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  getPhotoList() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request('photos',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = Photo.fromJson(_result.data);
    return value;
  }
}
