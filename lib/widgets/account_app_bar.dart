import 'dart:developer' as developer;
import 'package:cubit_app_flow/data/bloc/auth/auth_bloc.dart';
import 'package:cubit_app_flow/data/bloc/auth/auth_state.dart';
import 'package:cubit_app_flow/pages/authorized/profile/profile_edit_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state){
          return state.when(
              authorized: (data) {
                return Material(
                  elevation: 4,
                  child: SafeArea(
                    child: Container(
                      padding: EdgeInsets.only(left: 16),
                      child: NavigationToolbar(
                        centerMiddle: false,
                        middleSpacing: 16,
                        leading: CircleAvatar(
                          radius: (kToolbarHeight - 8)/2,
                          child: Text('${data.fullName[0]}'),
                        ),
                        middle: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${data.fullName}', style: Theme.of(context).textTheme.subtitle1,),
                            Text('${data.email}', style: Theme.of(context).textTheme.caption,)
                          ],
                        ),
                        trailing: IconButton(
                            icon: Icon(Icons.mode_edit),
                            onPressed: () {
                              Navigator.pushNamed(context, ProfileEditPage.ROUTE_NAME);
                            }),
                      ),
                    ),
                  ),
                );
              },
              unauthorized: () => SizedBox(),
          );
        },
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
