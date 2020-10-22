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
    return BlocConsumer<AuthBloc, AuthState>(
        builder: (context, state) {
          return state.when(
              authorized: () => AuthorizedNavigation(),
              unauthorized: () => AuthorizationNavigation(),
          );
        },
      listener: (context, state) {
          //TODO STH
      },
    );
  }
}
