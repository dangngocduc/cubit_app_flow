import 'dart:developer' as developer;
import 'package:cubit_app_flow/data/bloc/cubit/photo_list_cubit.dart';
import 'package:cubit_app_flow/pages/authorized/module1/root_module1_page.dart';
import 'package:cubit_app_flow/pages/photo/list/photo_list_page.dart';
import 'package:cubit_app_flow/utils/navigator/navigator_support.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class PhotoNavigation extends StatefulWidget {
  static const ROUTE_NAME = 'PhotoNavigation';

  @override
  _PhotoNavigationState createState() => _PhotoNavigationState();
}

class _PhotoNavigationState extends State<PhotoNavigation> {
  static const TAG = 'PhotoNavigation';
  @override
  Widget build(BuildContext context) {
    return NavigatorSupport(
      initialRoute: PhotoListPage.ROUTE_NAME,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          default:
            return MaterialPageRoute(
              builder: (context) => PhotoListPage(),
            );
          // return MaterialPageRoute(
          //   builder: (context) => BlocProvider(
          //     create: (BuildContext context) => PhotoListCubit(),
          //     child: PhotoListPage(),
          //   ),
          // );
        }
      },
    );
  }
}
