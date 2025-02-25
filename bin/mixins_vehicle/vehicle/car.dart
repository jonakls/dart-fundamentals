import './type/electric_type.dart';
import 'vehicle.dart';

class Car extends Vehicle with ElectricType {
  String mark;
  int chair;

  Car(super.name, super.color, super.maxSpeed, this.mark, this.chair);

  void drive() {
    print('Driving a car');
  }

  @override
  void charge() {
    print('Charging...');
  }
}
