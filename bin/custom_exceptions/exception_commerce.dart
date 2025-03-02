class ProductNotFoundException implements Exception {
  final String message;
  ProductNotFoundException(this.message);
}

class InvalidPriceException implements Exception {
  final String message;
  InvalidPriceException(this.message);
}

class NetworkException implements Exception {
  final String message;
  NetworkException(this.message);
}
