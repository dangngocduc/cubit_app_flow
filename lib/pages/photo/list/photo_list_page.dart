import 'package:cubit_app_flow/data/bloc/cubit/photo_list_cubit.dart';
import 'package:cubit_app_flow/data/bloc/retailer_list/retailer_list_cubit.dart';
import 'package:cubit_app_flow/utils/navigator/navigator_support.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhotoListPage extends StatefulWidget {
  static const ROUTE_NAME = 'PhotoListPage';
  const PhotoListPage({Key key}) : super(key: key);

  @override
  _PhotoListPageState createState() => _PhotoListPageState();
}

class _PhotoListPageState extends State<PhotoListPage> {
  @override
  void initState() {
    super.initState();
  }

  final photoCubit = PhotoListCubit();
  final retailerCubit = RetailerListCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Photo'),
          leading: BackButton(
            onPressed: () {
              NavigatorSupport.of(context).parent.pop();
            },
          ),
        ),
        body: BlocBuilder<PhotoListCubit, PhotoListState>(
          cubit: photoCubit..getPhotoList(),
          builder: (context, state) {
            return state.when(initial: () {
              return Container();
            }, loading: () {
              return Container();
            }, loaded: (data) {
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () async {
                      final dataResult = await photoCubit.getPhotoItem(index);
                      print("dataResult: ${dataResult.title}");
                    },
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          child: Text('$index'),
                        ),
                        Expanded(
                          child: Text(
                            data[index].title ?? '',
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }, error: (err) {
              return Container(
                color: Colors.red,
                child: Center(
                  child: Text(err.toString()),
                ),
              );
            });
          },
        ));
  }
}
