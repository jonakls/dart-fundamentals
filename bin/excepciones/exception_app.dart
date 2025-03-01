abstract class AppException implements Exception {
  final String message;

  AppException(this.message);
}

class ValidationException extends AppException {
  ValidationException(String message) : super(message);
}

class NetworkException extends AppException {
  NetworkException(String message) : super(message);
}

class AuthenticationException extends AppException {
  AuthenticationException(String message) : super(message);
}

void main() {
  try {
    throw ValidationException("El email ingresado no es válido.");
  } catch (e) {}

  try {
    throw NetworkException("No se pudo conectar al servidor.");
  } catch (e) {}

  try {
    throw AuthenticationException("Credenciales incorrectas.");
  } catch (e) {}
}
