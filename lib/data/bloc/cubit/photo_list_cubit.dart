import 'package:bloc/bloc.dart';
import 'package:connectivity/connectivity.dart';
import 'package:cubit_app_flow/data/model/photo.dart';
import 'package:cubit_app_flow/service/photo_service.dart';
import 'package:cubit_app_flow/service/service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuple/tuple.dart';
import 'package:cubit_app_flow/service/connectivity_service.dart';

part 'photo_list_state.dart';
part 'photo_list_cubit.freezed.dart';

/// https://eng.uber.com/new-rider-app-architecture/

class PhotoListCubit extends Cubit<PhotoListState> {
  static PhotoService photoService = PhotoService(Dio());
  static HiveService hiveService = HiveServiceImpl();
  static ModelStreamService modelStreamService = ModelStreamServiceImpl();

  PhotoListCubit() : super(PhotoListState.initial());

  Future getRetailerList() async {
    try {
      emit(PhotoListState.loading());

      modelStreamService.execute(onSuccess: () async {
        hiveService.writeItems<Photo>(
          await photoService.getPhotoList(),
          boxName: 'photo',
          transaction: ({items, box, hiveService}) async {
            final result = await hiveService.getItemsFromBox<Photo>(box);
            emit(PhotoListState.loaded(result));
          },
        );
      }, onError: () {
        hiveService.existsItems<Photo>(
          'photo',
          onExists: (items, {hiveService}) {
            emit(PhotoListState.loaded(items));
          },
          onEmpty: ({hiveService}) {
            emit(PhotoListState.error("Có lỗi"));
          },
        );
      });
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
