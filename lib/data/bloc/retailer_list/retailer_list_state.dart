part of 'retailer_list_cubit.dart';

@freezed
abstract class RetailerListState with _$RetailerListState {
  const factory RetailerListState.initial() = _Initial;
  const factory RetailerListState.loading() = RetailerModelLoading;
  const factory RetailerListState.loaded(RetailerModel retailerModel) =
      RetailerModelLoaded;
  const factory RetailerListState.error(String errorMessage) = _Error;
}
