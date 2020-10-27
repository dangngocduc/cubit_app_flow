import 'package:cubit_app_flow/data/model/photo.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../data/model/models.dart';

part 'photo_service.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')
abstract class PhotoService {
  factory PhotoService(Dio dio, {String baseUrl}) = _PhotoService;

  @GET('photos')
  Future<Photo> getPhotoList();
}
