import 'repository.dart';

class Task implements Identifiable {
  final String _id;
  String _name;
  bool _isCompleted;

  Task(this._id, this._name, this._isCompleted);

  @override
  String getId() {
    return _id;
  }

  String getName() {
    return _name;
  }

  bool isCompleted() {
    return _isCompleted;
  }

  void setName(String name) {
    _name = name;
  }

  void setCompleted(bool isCompleted) {
    _isCompleted = isCompleted;
  }

  @override
  String toString() {
    return 'Task: { id: $_id, name: $_name, isCompleted: $_isCompleted }';
  }
}


/// Implementación de un repositorio de tareas
/// Este repositorio almacenará tareas en memoria.
class TaskRepository implements ObjectRepository<Task> {
  final Map<String, Task> _tasks = {};

  @override
  void add(Task object) {
    _tasks[object.getId()] = object;
  }

  @override
  Task? getById(String id) {
    return _tasks[id];
  }

  @override
  void remove(Task object) {
    _tasks.remove(object.getId());
  }

  @override
  void update(Task object) {
    _tasks[object.getId()] = object;
  }

  @override
  Iterator<Task> iterator() {
    return _tasks.values.iterator;
  }
}
