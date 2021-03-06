import 'dart:developer' as developer;

import 'package:cubit_app_flow/data/bloc/auth/auth_state.dart';
import 'package:cubit_app_flow/data/model/models.dart';
import 'package:cubit_app_flow/data/repositories/repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Cubit<AuthState>{
  static const TAG = 'AuthBloc';
  AuthRepository _authRepository;

  AuthBloc(state, this._authRepository) : super(state);

  /// User Call Login Page
  Future login(String username, String password) async {
    final user = await _authRepository.signIn(userName: username, password: password);
    emit(AuthState.authorized(user));
  }

  /// Update info
  Future updateInfo(UserInfo user) async {
    emit(AuthState.authorized(user));
  }

  /// User Call Sign Out
  void logout() {
    if (state is AuthStateuthorized) {
      emit(AuthState.unauthorized());
    }
  }
}