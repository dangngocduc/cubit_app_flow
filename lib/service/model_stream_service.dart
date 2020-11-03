import 'package:connectivity/connectivity.dart';

typedef ConnectivityOnSuccess = void Function();
typedef ConnectivityOnFailture = void Function();

abstract class ModelStreamService {
  void execute({
    ConnectivityOnSuccess onOnline,
    ConnectivityOnSuccess onOffline,
  });
}

class ModelStreamServiceImpl implements ModelStreamService {
  @override
  void execute({
    ConnectivityOnSuccess onOnline,
    ConnectivityOnSuccess onOffline,
  }) async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      return onOnline();
    } else {
      return onOffline();
    }
  }
}
