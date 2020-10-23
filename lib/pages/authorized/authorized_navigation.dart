import 'dart:developer' as developer;
import 'package:cubit_app_flow/pages/authorized/home/home_page.dart';
import 'package:cubit_app_flow/pages/authorized/profile/profile_edit_page.dart';
import 'package:cubit_app_flow/utils/navigator/navigator_support.dart';
import 'package:flutter/material.dart';

import 'module1/module1_navigation.dart';

class AuthorizedNavigation extends StatefulWidget {
  static const ROUTE_NAME = 'AuthorizedNavigation';
  @override
  _AuthorizedNavigationState createState() => _AuthorizedNavigationState();
}

class _AuthorizedNavigationState extends State<AuthorizedNavigation> {
  static const TAG = 'AuthorizedNavigation';
  GlobalKey<NavigatorState> navigationKey = GlobalKey(debugLabel: 'AuthorizedNavigation');
  @override
  Widget build(BuildContext context) {
    return NavigatorSupport(
      key: navigationKey,
      initialRoute: HomePage.ROUTE_NAME,
      onGenerateRoute: (settings) {
        switch(settings.name) {
          case ProfileEditPage.ROUTE_NAME:
            return MaterialPageRoute(
                builder: (context) => ProfileEditPage(),
                settings: settings
            );
          case Module1Navigation.ROUTE_NAME:
            return MaterialPageRoute(
                builder: (context) => Module1Navigation(),
                settings: settings
            );
          default:
            return MaterialPageRoute(
              builder: (context) => HomePage(),
              settings: settings
            );
        }
      },
    );
  }
}
