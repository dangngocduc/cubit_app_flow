import 'package:bloc/bloc.dart';
import 'package:cubit_app_flow/service/network_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/models.dart';

part 'retailer_list_state.dart';
part 'retailer_list_cubit.freezed.dart';

class RetailerListCubit extends Cubit<RetailerListState> {
  final NetworkService _networkService;

  RetailerListCubit(this._networkService) : super(RetailerListState.initial());

  Future getRetailerList() async {
    try {
      emit(RetailerListState.loading());
      final retailers = await _networkService.getListRetailer();
      emit(RetailerListState.loaded(retailers));
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
