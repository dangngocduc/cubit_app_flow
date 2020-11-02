class NetworkException implements Exception {
  final String message;
  final String code;

  NetworkException(this.message, this.code);
}

class BoxNotExistsException implements Exception {
  final String message;

  BoxNotExistsException(this.message);
}
