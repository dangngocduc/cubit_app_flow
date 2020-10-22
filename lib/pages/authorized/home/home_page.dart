import 'dart:developer' as developer;
import 'package:cubit_app_flow/data/bloc/auth/auth_bloc.dart';
import 'package:cubit_app_flow/pages/authorized/module1/module1_navigation.dart';
import 'package:cubit_app_flow/pages/authorized/profile/profile_edit_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const ROUTE_NAME = 'HomePage';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const TAG = 'HomePage';

  @override
  void initState() {
    super.initState();
    developer.log('initState', name: TAG);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, ProfileEditPage.ROUTE_NAME);
                },
                child: Text('EDIT INFO')),
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, Module1Navigation.ROUTE_NAME);
                },
                child: Text('MODULE 1')),
            FlatButton(
                onPressed: () {
                  context.read<AuthBloc>().signOut();
                },
                child: Text('SIGN OUT'))
          ],
        ),
      ),
    );
  }
}
