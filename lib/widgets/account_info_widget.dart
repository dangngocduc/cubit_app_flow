import 'dart:developer' as developer;
import 'package:cubit_app_flow/data/bloc/auth/auth_bloc.dart';
import 'package:cubit_app_flow/data/bloc/auth/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state){
          return state.when(
              authorized: (data) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  child: ListTile(
                    leading: Icon(Icons.perm_identity),
                    title: Text('${data.fullName}'),
                    subtitle: Text('${data.email}'),
                  ),
                );
              },
              unauthorized: () => SizedBox(),
          );
        },
    );
  }
}
