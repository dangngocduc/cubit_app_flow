import 'package:cubit_app_flow/data/bloc/auth/auth_bloc.dart';
import 'package:cubit_app_flow/data/bloc/auth/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer' as developer;

import 'package:provider/provider.dart';

import 'authorization/authorization_navigation.dart';
import 'authorized/authorized_navigation.dart';
import 'splash_page.dart';

class AuthorizationStatePage extends StatefulWidget {
  static const ROUTE_NAME = 'AuthorizationStatePage';
  @override
  _AuthorizationStatePageState createState() => _AuthorizationStatePageState();
}

class _AuthorizationStatePageState extends State<AuthorizationStatePage> {
  static const TAG = 'AuthorizationStatePage';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          developer.log('build state: $state', name: TAG);
          return state.when(
              authorized: (user) => AuthorizedNavigation(),
              unauthorized: () => AuthorizationNavigation(),
          );
        },
      buildWhen: (previous, current) {
          developer.log('build previous.runtimeType ${previous.runtimeType}', name: TAG);
          developer.log('build current.runtimeType ${current.runtimeType}', name: TAG);
          return previous.runtimeType != current.runtimeType;
      },
    );
  }
}
