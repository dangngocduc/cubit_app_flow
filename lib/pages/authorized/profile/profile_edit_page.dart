import 'dart:developer' as developer;
import 'package:cubit_app_flow/data/bloc/auth/auth_bloc.dart';
import 'package:cubit_app_flow/data/bloc/auth/auth_state.dart';
import 'package:cubit_app_flow/data/model/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileEditPage extends StatefulWidget {
  static const ROUTE_NAME = 'ProfileEditPage';
  @override
  _ProfileEditPageState createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  static const TAG = 'ProfileEditPage';
  GlobalKey<FormState> formEdit = GlobalKey();
  UserInfo userInfo;
  @override
  void initState() {
    super.initState();
    userInfo = context.bloc<AuthBloc>().state.when(
        authorized: (data) => UserInfo.fromJson(data.toJson()),
        unauthorized: () => null,
    );
  }

  bool isValidSubmit() {
    return userInfo.email.isNotEmpty && userInfo.fullName.isEmpty;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Edit'),
      ),
      body: Form(
          key: formEdit,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 16
            ),
            child: Column(
              children: [
                TextFormField(
                  initialValue: userInfo.fullName,
                  decoration: InputDecoration(
                    icon: Icon(Icons.perm_identity),
                    hintText: 'Name',
                    labelText: 'Name',
                    filled: true,
                    border: UnderlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value.isEmpty) return 'Input Invalid!';
                    return null;
                  },
                  onSaved: (value) {
                    userInfo.fullName = value;
                  },
                ),
                SizedBox(height: 16,),
                TextFormField(
                  initialValue: userInfo.email,
                  decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    hintText: 'Email',
                    labelText: 'Email',
                    filled: true,
                    border: UnderlineInputBorder()
                  ),
                  validator: (value) {
                    if (value.isEmpty) return 'Input Invalid!';
                    return null;
                  },
                  onSaved: (value) {
                    userInfo.email = value;
                  },
                ),
                SizedBox(height: 16,),
                FlatButton(
                  shape: StadiumBorder(),
                  color: Colors.blue,
                  onPressed: () {
                    if (formEdit.currentState.validate()) {
                      formEdit.currentState.save();
                      context.bloc<AuthBloc>().updateInfo(userInfo).then((value){
                        Navigator.pop(context);
                      });
                    }
                  },
                  child: Text('Update'),
                )
              ],
            ),
          )
      ),
    );
  }
}
