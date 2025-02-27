import 'dart:io';

import 'tree_controller.dart';

void main() {
  print('-====[ Árbol binario ]====-');
  final TreeController treeController = TreeController<int>(0);
  int option = 0;

  while (option != 5) {
    option = showMenu();
    switch (option) {
      case 1:
        print('Añadir');
        print('Ingresa un valor: ');
        var value = int.parse(stdin.readLineSync()!);
        break;
      case 2:
        print('Inorder');
        break;
      case 3:
        print('Preorder');
        break;
      case 4:
        print('Postorder');
        break;
      case 5:
        print('Salir');
        print("¡Hasta luego!");
        break;
      default:
        print('Opción no válida');
    }
  }
}

int showMenu() {
  print('1. Añadir');
  print('2. Inorder');
  print('3. Preorder');
  print('4. Postorder');
  print('5. Salir');

  print('Selecciona una opción:');

  var option = int.parse(stdin.readLineSync()!);

  return option;
}
