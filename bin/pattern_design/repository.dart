/// Clase abstracta que nos permitirá identificar a los objetos que se
/// almacenarán en el repositorio.
abstract class Identifiable {
  String getId();
}

/// Repository pattern
/// Esta patron de diseño nos va a permitir separar la logica de negocio de la
/// logica de persistencia, pero en este caso se usará como utilidad para
/// almacenar objetos en memoria.
abstract class ObjectRepository<T extends Identifiable> {
  void add(T object);

  void remove(T object);

  void update(T object);

  Iterator<T> iterator();

  T? getById(String id);
}
