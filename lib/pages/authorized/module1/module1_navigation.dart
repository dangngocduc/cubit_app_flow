import 'dart:developer' as developer;
import 'package:cubit_app_flow/pages/authorized/module1/root_module1_page.dart';
import 'package:flutter/material.dart';

class Module1Navigation extends StatefulWidget {
  static const ROUTE_NAME = 'Module1Navigation';
  final GlobalKey<NavigatorState> parentNavigation;

  Module1Navigation(this.parentNavigation);

  @override
  _Module1NavigationState createState() => _Module1NavigationState();
}

class _Module1NavigationState extends State<Module1Navigation> {
  static const TAG = 'Module1Navigation';
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: RootModule1Page.ROUTE_NAME,
      onGenerateRoute: (settings) {
        switch(settings.name) {
          default:
            return MaterialPageRoute(
                builder: (context) => RootModule1Page(
                    () {
                      widget.parentNavigation.currentState?.pop();
                    }
                ),
            );
        }
      },
    );
  }
}
