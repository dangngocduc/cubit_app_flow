import 'package:cubit_app_flow/data/model/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.authorized(UserInfo userInfo) = AuthStateuthorized;
  const factory AuthState.unauthorized() = AuthStateUnAuthorized;
}
