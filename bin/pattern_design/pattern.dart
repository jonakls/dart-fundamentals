/// Singleton pattern
/// El patron de diseño Singleton es un patron de creacion que garantiza que una
/// clase solo tenga una instancia y proporciona un punto de acceso global a ella.
class SingletonClass {
  // Indicacion de que el constructor es privado
  // Esto para evitar nuevas instancias, debemos recordar que necesitamos
  // una sola instancia de la clase y no debemos permitir crear nuevas instancias.
  SingletonClass._();
  // Instancia de la clase creada una unica vez.
  static final SingletonClass _instance = SingletonClass._();

  // Metodo que nos permite obtener la instancia de la clase.
  // Sintaxis de factory, nos permite retornar una instancia con expresion lambda.
  factory SingletonClass() => _instance;

  void printMessage() {
    print('Singleton class');
  }
}


/// Factory pattern
/// El patron de diseño Factory es un patron de creacion que proporciona una interfaz
/// para crear objetos en una superclase, pero permite a las subclases alterar el tipo
/// de objetos que se crearan.
abstract class Button {
  // Comportamiento de los botones
  void onClick();
  void render();
  // Metodo que nos permite cambiar el color de los botones
  void setColor(String color);
}

/// Clase que implementa la interfaz Button para los botones de Android
class AndroidButton implements Button {
  String _color = 'green';

  @override
  void onClick() {
    print('Android button clicked');
  }

  @override
  void render() {
    print('Android button rendered');
  }

  @override
  void setColor(String color) {
    _color = color;
  }
}


/// Clase que implementa la interfaz Button para los botones de iOS
class IOSButton implements Button {
  String _color = 'blue';

  @override
  void onClick() {
    print('iOS button clicked');
  }

  @override
  void render() {
    print('iOS button rendered');
  }

  @override
  void setColor(String color) {
    _color = color;
  }
}


/// Clase que implementa la interfaz Button para los botones de Web
class WebButton implements Button {
  String _color = 'red';

  @override
  void onClick() {
    print('Web button clicked');
  }

  @override
  void render() {
    print('Web button rendered');
  }

  @override
  void setColor(String color) {
    _color = color;
  }
}

class ButtonFactory {
  // Metodo que nos permite crear botones
  Button createButton(String platform) {
    switch (platform) {
      case 'android':
        return AndroidButton();
      case 'ios':
        return IOSButton();
      case 'web':
        return WebButton();
      default:
        throw Exception('Unknown platform');
    }
  }
}

/// Observer pattern