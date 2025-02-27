import 'tree_binary.dart';

class TreeController<T> {
  TreeBinary<T>? _root;

  TreeController(T value) {
    _root = TreeBinary<T>(value);
    if (_root == null) {
      throw Exception('No se pudo crear el árbol');
    }
  }

  void insert(T value) {
    if (value == null) {
      throw Exception('El valor no puede ser nulo');
    }

    final node = TreeBinary<T>(value);
    node.left = null;
    node.right = null;

    if (_root == null) {
      _root = node;
    } else {
      final currentNode = _root;

      while (currentNode != null) {
        if (currentNode.left == null && currentNode.right == null) {

        }
      }
    }
  }
}
