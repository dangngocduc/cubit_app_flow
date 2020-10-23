import 'dart:developer' as developer;
import 'package:cubit_app_flow/data/bloc/auth/auth_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SignInPage extends StatefulWidget {
  static const ROUTE_NAME = 'SignInPage';
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  static const TAG = 'SignInPage';
  GlobalKey<FormState> _formKey = GlobalKey(debugLabel: 'SignInPage');
  bool _isLoading = false;
  String username, password;
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
            body: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 16
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 48,),
                  FlutterLogo(
                    size: 112,
                  ),
                  SizedBox(height: 48,),
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.perm_identity),
                      hintText: 'Email',
                      labelText: 'Email',
                      filled: true,
                      border: UnderlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value.isEmpty) return 'Input Invalid!';
                      return null;
                    },
                    enabled: !_isLoading,
                    onSaved: (value) {
                      username = value;
                    },
                  ),
                  SizedBox(height: 16,),
                  TextFormField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        hintText: 'Password',
                        labelText: 'Password',
                        filled: true,
                        border: UnderlineInputBorder()
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value.isEmpty) return 'Input Invalid!';
                      return null;
                    },
                    enabled: !_isLoading,
                    onSaved: (value) {
                      password = value;
                    },
                  ),
                  SizedBox(height: 16,),
                  FlatButton(
                    padding: EdgeInsets.symmetric(
                      horizontal: 64,
                      vertical: 12
                    ),
                    shape: StadiumBorder(),
                    color: Colors.blue,
                    disabledColor: Colors.blue,
                    onPressed: !_isLoading ?  () {
                      if (_formKey.currentState.validate()) {
                        setState(() {
                          _isLoading = true;
                        });
                        _formKey.currentState.save();
                        context.bloc<AuthBloc>().login(username, password).catchError(
                            (error) {
                              setState(() {
                                _isLoading = false;
                              });
                            }
                        );
                      }
                    } : null,
                    child: _isLoading ? CupertinoActivityIndicator() : Text('Sign in'),
                  )
                ],
              ),
            )
        ),
    );
  }
}
