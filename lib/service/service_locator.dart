import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'service.dart';

GetIt sl = GetIt.instance;

///
void setUpServiceLocator() {
  sl.registerLazySingleton<PhotoService>(() => PhotoService(Dio()));
}
