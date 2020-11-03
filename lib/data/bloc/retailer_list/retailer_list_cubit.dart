import 'package:bloc/bloc.dart';
import 'package:cubit_app_flow/service/network_service.dart';
import 'package:cubit_app_flow/service/service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/models.dart';

part 'retailer_list_state.dart';
part 'retailer_list_cubit.freezed.dart';

class RetailerListCubit extends Cubit<RetailerListState> {
  static NetworkService _networkService = NetworkService(Dio());

  static HiveService hiveService = HiveServiceImpl();
  static ModelStreamService modelStreamService = ModelStreamServiceImpl();

  RetailerListCubit() : super(RetailerListState.initial());

  Future getRetailerList() async {
    try {
      emit(RetailerListState.loading());

      modelStreamService.execute(onOnline: () async {
        // final data = await _networkService.getListRetailer();
        hiveService.writeItem(await _networkService.getListRetailer(),
            boxName: 'retailermodel', transaction: ({box, hiveService, item}) {
          ///
          ///
          ///
          ///
          ///
        });
      }, onOffline: () {
        ///
        ///
        ///
        ///
        ///
      });
      // emit(RetailerListState.loaded(retailers));
    } on Exception catch (e) {
      emit(RetailerListState.error(e.toString()));
    }
  }
}

class NetworkExeption implements Exception {
  @override
  String toString() {
    return "Rớt mạng";
  }
}
