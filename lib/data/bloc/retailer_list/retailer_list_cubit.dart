import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/models.dart';

part 'retailer_list_state.dart';
part 'retailer_list_cubit.freezed.dart';

class RetailerListCubit extends Cubit<RetailerListState> {
  RetailerListCubit() : super(RetailerListState.initial());
}
