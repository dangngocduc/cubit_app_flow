import 'dart:developer' as developer;
import 'package:cubit_app_flow/data/bloc/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatefulWidget {
  static const ROUTE_NAME = 'SignInPage';
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  static const TAG = 'SignInPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignInPage'),
      ),
      body: Center(
        child: FlatButton(
            onPressed: () {
              context.read<AuthBloc>().login();
            },
            child: Text('SIGN IN')),
      ),
    );
  }
}
