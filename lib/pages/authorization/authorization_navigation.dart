import 'dart:developer' as developer;
import 'package:cubit_app_flow/pages/authorization/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';

class AuthorizationNavigation extends StatefulWidget {
  static const ROUTE_NAME = 'AuthorizationNavigation';
  @override
  _AuthorizationNavigationState createState() => _AuthorizationNavigationState();
}

class _AuthorizationNavigationState extends State<AuthorizationNavigation> {
  static const TAG = 'AuthorizationNavigation';
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: SignInPage.ROUTE_NAME,
      onGenerateRoute: (settings) {
        switch(settings.name) {
          case  SignInPage.ROUTE_NAME:
            return MaterialPageRoute(
                builder: (context) => SignInPage(),
                settings: settings
            );
          default:
            return null;
        }
      },
    );
  }
}
