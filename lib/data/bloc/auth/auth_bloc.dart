import 'dart:developer' as developer;

import 'package:cubit_app_flow/data/bloc/auth/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Cubit<AuthState>{
  static const TAG = 'AuthBloc';

  AuthBloc(state) : super(state);

  /// User Call Login Page
  void login() {
    emit(AuthState.authorized());
  }

  /// User Call SignOut
  void signOut() {
    if (state is AuthStateuthorized) {
      emit(AuthState.unauthorized());
    }
  }
}