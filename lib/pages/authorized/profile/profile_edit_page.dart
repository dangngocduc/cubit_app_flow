import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class ProfileEditPage extends StatefulWidget {
  static const ROUTE_NAME = 'ProfileEditPage';
  @override
  _ProfileEditPageState createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  static const TAG = 'ProfileEditPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Edit'),
      ),
    );
  }
}
