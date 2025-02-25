import 'vehicle/boat.dart';
import 'vehicle/car.dart';
import 'vehicle/plane.dart';
import 'vehicle/vehicle.dart';

void main(List<String> args) {
  final Set<Vehicle> vehicles = {
    Car('Car', 'Red', 200, 'Volkswagen', 4),
    Boat('Boat', 'Blue', 100, 'Motorboat'),
    Plane('Plane', 'White', 500, '10000', '200'),
  };

  for (var vehicle in vehicles) {
    vehicle.turnOn();

    if (vehicle is Car) {
      print('Car: ${vehicle.name}');
      vehicle.drive();
      vehicle.charge();
    }

    if (vehicle is Boat) {
      print('Boat: ${vehicle.name}');
      vehicle.swim();
    }

    if (vehicle is Plane) {
      print('Plane: ${vehicle.name}');
      vehicle.fly();
    }

    vehicle.turnOff();
  }
}
