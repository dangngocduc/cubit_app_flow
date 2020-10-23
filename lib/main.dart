import 'package:cubit_app_flow/application.dart';
import 'package:cubit_app_flow/data/bloc/auth/auth_bloc.dart';
import 'package:cubit_app_flow/data/bloc/auth/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'data/repositories/auth_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final AuthRepository authRepository = AuthRepository();
  final document = await getApplicationDocumentsDirectory();
  Hive.init(document.path);
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<AuthBloc>(
        create: (context) => AuthBloc(AuthState.unauthorized(), authRepository),
      )
    ],
    child: Application(),
  ));
}
