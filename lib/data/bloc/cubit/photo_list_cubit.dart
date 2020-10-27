import 'package:bloc/bloc.dart';
import 'package:cubit_app_flow/data/model/photo.dart';
import 'package:cubit_app_flow/service/photo_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_list_state.dart';
part 'photo_list_cubit.freezed.dart';

class PhotoListCubit extends Cubit<PhotoListState> {
  final PhotoService _photoService;

  PhotoListCubit(this._photoService) : super(PhotoListState.initial());

  Future getRetailerList() async {
    try {
      emit(PhotoListState.loading());
      final _photo = await _photoService.getPhotoList();
      emit(PhotoListState.loaded(_photo));
    } on Exception catch (e) {
      emit(PhotoListState.error(e.toString()));
    }
  }
}
