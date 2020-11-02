import 'package:connectivity/connectivity.dart';

typedef ConnectivityOnSuccess = void Function();
typedef ConnectivityOnFailture = void Function();

abstract class ConnectivityService {
  void execute(
    ConnectivityOnSuccess onSuccess,
    ConnectivityOnSuccess onError,
  );
}

class ConnectivityServiceImpl extends ConnectivityService {
  @override
  void execute(
      ConnectivityOnSuccess onSuccess, ConnectivityOnSuccess onError) async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      return onSuccess();
    } else {
      return onError();
    }
  }
}
