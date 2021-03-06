import 'package:connectivity/connectivity.dart';

typedef ConnectivityOnSuccess = void Function();
typedef ConnectivityOnFailture = void Function();

abstract class ModelStreamService {
  void execute({
    ConnectivityOnSuccess onSuccess,
    ConnectivityOnSuccess onError,
  });
}

class ModelStreamServiceImpl implements ModelStreamService {
  @override
  void execute({
    ConnectivityOnSuccess onSuccess,
    ConnectivityOnSuccess onError,
  }) async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      return onSuccess();
    } else {
      return onError();
    }
  }
}
