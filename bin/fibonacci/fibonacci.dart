import 'dart:io';

import 'fibonacci_service.dart';

void main(List<String> args) async {
  final FibonacciService fibonacciService = FibonacciService();

  print(
    'Digite el número de elementos de la secuencia de Fibonacci a generar:',
  );
  final String? input = stdin.readLineSync();

  if (input == null) {
    print('No se proporcionó un número válido.');
    return;
  }

  final int? n = int.tryParse(input);
  if (n == null) {
    print('No se proporcionó un número válido.');
    return;
  }

  fibonacciService.start(n);

  print('Generando la secuencia de Fibonacci...');
  await Future.delayed(Duration(seconds: 2));
  fibonacciService.pause();

  print('Generación de la secuencia de Fibonacci pausada.');
  await Future.delayed(Duration(seconds: 2));
  fibonacciService.resume();

  print('Reanudando la generación de la secuencia de Fibonacci...');
  print("Cancelando...");
  await Future.delayed(Duration(seconds: 2));
  fibonacciService.cancel();
}
