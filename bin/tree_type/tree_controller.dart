import 'tree_binary.dart';

class TreeController<T extends Comparable<T>> {
  TreeBinary<T>? _root;

  TreeController(T value) {
    _root = TreeBinary<T>(value);
    if (_root == null) {
      throw Exception('No se pudo crear el árbol');
    }
  }

  void insert(T value, TreeBinary<T> node) {
    if (value.compareTo(node.value) < 0) {
      if (node.left == null) {
        node.left = TreeBinary<T>(value);
      } else {
        insert(value, node.left!);
      }
    } else {
      if (node.right == null) {
        node.right = TreeBinary<T>(value);
      } else {
        insert(value, node.right!);
      }
    }
  }

  void search(T value, TreeBinary<T> node) {
    if (value.compareTo(node.value) == 0) {
      print('El valor $value se encuentra en el árbol');
    } else if (value.compareTo(node.value) < 0) {
      if (node.left == null) {
        print('El valor $value no se encuentra en el árbol');
      } else {
        search(value, node.left!);
      }
    } else {
      if (node.right == null) {
        print('El valor $value no se encuentra en el árbol');
      } else {
        search(value, node.right!);
      }
    }
  }

  void delete(T value, TreeBinary<T> node) {
    if (value.compareTo(node.value) == 0) {
      if (node.left == null && node.right == null) {
        node = TreeBinary<T>(node.value);
      } else if (node.left == null) {
        node = node.right!;
      } else if (node.right == null) {
        node = node.left!;
      } else {
        TreeBinary<T> temp = node.right!;
        while (temp.left != null) {
          temp = temp.left!;
        }
        node.value = temp.value;
        delete(temp.value, node.right!);
      }
    } else if (value.compareTo(node.value) < 0) {
      if (node.left == null) {
        print('El valor $value no se encuentra en el árbol');
      } else {
        delete(value, node.left!);
      }
    } else {
      if (node.right == null) {
        print('El valor $value no se encuentra en el árbol');
      } else {
        delete(value, node.right!);
      }
    }
  }

  void inOrder(TreeBinary<T> node) {
    if (node.left != null) {
      inOrder(node.left!);
    }
    print(node.value);
    if (node.right != null) {
      inOrder(node.right!);
    }
  }

  void postOrder(TreeBinary<T> node) {
    if (node.left != null) {
      postOrder(node.left!);
    }
    if (node.right != null) {
      postOrder(node.right!);
    }
    print(node.value);
  }

  void preOrder(TreeBinary<T> node) {
    print(node.value);
    if (node.left != null) {
      preOrder(node.left!);
    }
    if (node.right != null) {
      preOrder(node.right!);
    }
  }
}
