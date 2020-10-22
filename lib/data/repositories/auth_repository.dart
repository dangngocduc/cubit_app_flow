import 'dart:developer' as developer;

import 'package:cubit_app_flow/data/model/models.dart';
import 'package:flutter/foundation.dart';

class AuthRepository {
  static const TAG = 'AuthRepository';

  Future signIn({@required String userName, @required String password}) {
    return Future.delayed(
        Duration(seconds: 2),
            () => UserInfo(fullName: 'Nguyen Van A', avatar: ''),
    );
  }
}