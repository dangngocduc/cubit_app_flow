import 'package:cubit_app_flow/application.dart';
import 'package:cubit_app_flow/data/bloc/auth/auth_bloc.dart';
import 'package:cubit_app_flow/data/bloc/auth/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/repositories/auth_repository.dart';

void main() {
  final AuthRepository authRepository = AuthRepository();
  runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
              create: (context) => AuthBloc(
                  AuthState.unauthorized(),
                  authRepository),)
        ],
        child: Application(),
      )
  );
}
