import 'dart:async';

class FibonacciService {
  late StreamSubscription<int> _subscription;
  final StreamController<int> _controller = StreamController<int>();

  /// Genera la secuencia de Fibonacci de forma asíncrona.
  ///
  /// [n] es el número de elementos de la secuencia a generar.
  /// [a] es el primer número de la secuencia.
  /// [b] es el segundo número de la secuencia.
  /// [count] es el contador de elementos generados.
  Stream<int> generate(int n, [int a = 0, int b = 1, int count = 0]) async* {
    if (count >= n) return;

    yield a;
    await Future.delayed(Duration(milliseconds: 100));
    yield* generate(n, b, a + b, count + 1);
  }

  /// Inicia la generación de la secuencia de Fibonacci.
  ///
  /// [n] es el número de elementos de la secuencia a generar.
  /// [number] es el número actual de la secuencia.
  /// [print] es la función que imprime el número actual de la secuencia.
  void start(int n) {
    _subscription = generate(n).listen(
      (int number) {
        print('Serie fibonacci: $number');
        _controller.add(number);
      },
      onDone: () => _controller.close(),
      onError:
          (Object error, StackTrace stackTrace) =>
              _controller.addError(error, stackTrace),
    );
  }

  /// Pausa la generación de la secuencia de Fibonacci.
  ///
  /// La suscripción se puede reanudar con el método [resume].
  void pause() {
    _subscription.pause();
    print("Pausa");
  }

  /// Indica si la generación de la secuencia de Fibonacci está pausada.
  bool get isPaused => _subscription.isPaused;

  /// Reanuda la generación de la secuencia de Fibonacci.
  ///
  /// La suscripción se puede pausar con el método [pause].
  void resume() {
    _subscription.resume();
    print("Reanudar");
  }

  /// Cancela la generación de la secuencia de Fibonacci.
  ///
  /// La suscripción no se puede reanudar después de cancelarla.
  void cancel() {
    _subscription.cancel();
    _controller.close();
    print("Cancelado");
  }
}
