import 'dart:isolate';

import 'package:bloc/bloc.dart';
import 'package:cubit_app_flow/data/model/photo.dart';
import 'package:cubit_app_flow/service/photo_service.dart';
import 'package:cubit_app_flow/service/service.dart';
import 'package:cubit_app_flow/service/service_locator.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:tuple/tuple.dart';

part 'photo_list_state.dart';
part 'photo_list_cubit.freezed.dart';

class PhotoListCubit extends Cubit<PhotoListState> {
  static PhotoService photoService = PhotoService(Dio());
  static HiveService hiveService = HiveServiceImpl();

  PhotoListCubit() : super(PhotoListState.initial());

  Future getRetailerList() async {
    try {
      emit(PhotoListState.loading());

      hiveService.writeItems<Photo>(
        await photoService.getPhotoList(),
        boxName: 'photo',
        transaction: ({items, box, hiveService}) async {
          final result = await hiveService.getItemsFromBox<Photo>(box);
          emit(PhotoListState.loaded(result));
        },
      );

      ///
      // createWorkerThread();
    } on Exception catch (e) {
      emit(PhotoListState.error(e.toString()));
    }
  }

  Future<Photo> getRetailerItem(int index) async {
    final result = await hiveService.getItemAtIndex<Photo>(
      index,
      boxName: 'photo',
    );
    return result;
  }

  // void createWorkerThread() {
  //   ReceivePort receivePort = ReceivePort();
  //   Isolate.spawn(loadData, receivePort.sendPort);

  //   receivePort.listen((message) {
  //     emit(PhotoListState.loaded(message));
  //   });
  // }

  // static loadData(SendPort sendPort) async {
  //   final dataResult = await photoService.getPhotoList();

  //   sendPort.send(dataResult);
  // }
}
