import 'package:cubit_app_flow/application.dart';
import 'package:cubit_app_flow/data/bloc/auth/auth_bloc.dart';
import 'package:cubit_app_flow/data/bloc/auth/auth_state.dart';
import 'package:cubit_app_flow/data/model/photo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'dart:developer' as developer;
import 'package:path_provider/path_provider.dart';

import 'data/model/models.dart';
import 'data/repositories/auth_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final AuthRepository authRepository = AuthRepository();
  final document = await getApplicationDocumentsDirectory();
  Hive.init(document.path);
  developer.log(document.path);

  Hive.registerAdapter(PhotoAdapter());
  Hive.registerAdapter(RetailerModelAdapter());
  Hive.registerAdapter(PaginationAdapter());
  Hive.registerAdapter(RetailerAdapter());


  {
    "meta": {
        "code": 200,
        "message": "OK"
    },
    "data": {
        "list_item": [
                "item": "1",
                "item": "2",
                "item": "3",
        ],
        "order_id": "20201023T003IDN56VMJ",
        "expired_at": 1603424643,
    }
  }

  final result = Map<String, dynamic>();
  result["meta"] = 

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<AuthBloc>(
        create: (context) => AuthBloc(AuthState.unauthorized(), authRepository),
      )
    ],
    child: Application(),
  ));
}
