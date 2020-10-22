import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  static const ROUTE_NAME = 'SplashPage';
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  static const TAG = 'SplashPage';
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: null,
        onWillPop: null);
  }
}
