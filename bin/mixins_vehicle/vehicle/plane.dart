import 'type/flyer_type.dart';
import 'vehicle.dart';

class Plane extends Vehicle with FlyerType {
  String maxAltitude;
  String maxPassengers;

  Plane(
    super.name,
    super.color,
    super.maxSpeed,
    this.maxAltitude,
    this.maxPassengers,
  );

  @override
  void fly() {
    print('Flying');
  }
}
