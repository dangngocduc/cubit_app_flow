import 'package:cubit_app_flow/data/bloc/retailer_list/retailer_list_cubit.dart';
import 'package:cubit_app_flow/utils/navigator/navigator_support.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RetailerListPage extends StatefulWidget {
  static const ROUTE_NAME = 'RetailerListPage';
  const RetailerListPage({Key key}) : super(key: key);

  @override
  _RetailerListPageState createState() => _RetailerListPageState();
}

class _RetailerListPageState extends State<RetailerListPage> {
  @override
  void initState() {
    super.initState();
  }

  final retailerCubit = RetailerListCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Retailer'),
          leading: BackButton(
            onPressed: () {
              NavigatorSupport.of(context).parent.pop();
            },
          ),
        ),
        body: BlocBuilder<RetailerListCubit, RetailerListState>(
          cubit: retailerCubit..getRetailerList(),
          builder: (context, state) {
            return state.when(initial: () {
              return Container();
            }, loading: () {
              return Container();
            }, loaded: (data) {
              return ListView.builder(
                itemCount: data.retailers.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () async {
                      // final dataResult =
                      //     await RetailerCubit.getRetailerItem(index);
                      // print("dataResult: ${dataResult.title}");
                    },
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          child: Text('$index'),
                        ),
                        Expanded(
                          child: Text(
                            data.retailers[index].name ?? '',
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
