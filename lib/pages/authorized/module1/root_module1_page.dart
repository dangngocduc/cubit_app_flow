import 'dart:developer' as developer;
import 'package:cubit_app_flow/utils/navigator/navigator_support.dart';
import 'package:flutter/material.dart';

class RootModule1Page extends StatefulWidget {
  static const ROUTE_NAME = 'RootModule1Page';
  RootModule1Page();

  @override
  _RootModule1PageState createState() => _RootModule1PageState();
}

class _RootModule1PageState extends State<RootModule1Page> {
  static const TAG = 'RootModule1Page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            NavigatorSupport.of(context).parent.pop();
          },
        ),
        title: Text('Root Module1 Page'),
      ),
    );
  }
}
