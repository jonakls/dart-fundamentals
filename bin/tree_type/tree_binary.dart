/// Clase que representa un árbol binario
class TreeBinary<T> {
  T? _value;
  TreeBinary<T>? left;
  TreeBinary<T>? right;

  /// Constructor de la clase TreeBinary
  ///
  /// [value] es el valor del nodo
  /// [left] es el nodo izquierdo
  /// [right] es el nodo derecho
  TreeBinary(value, {TreeBinary<T>? left, TreeBinary<T>? right}) {
    _value = value;
    left = left;
    right = right;
  }

  T get value => _value!;

  set value(T value) {
    _value = value;
  }
}
