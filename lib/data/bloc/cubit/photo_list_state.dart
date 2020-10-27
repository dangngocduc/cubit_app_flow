part of 'photo_list_cubit.dart';

@freezed
abstract class PhotoListState with _$PhotoListState {
  const factory PhotoListState.initial() = _Initial;

  const factory PhotoListState.loading() = _Loading;
  const factory PhotoListState.loaded(Photo retailerModel) = _Loaded;
  const factory PhotoListState.error(String errorMessage) = _Error;
}
