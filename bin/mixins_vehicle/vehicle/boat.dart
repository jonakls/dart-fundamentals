import 'type/amphibian_type.dart';
import 'vehicle.dart';

class Boat extends Vehicle with AmphibianType {
  String motorName;

  Boat(super.name, super.color, super.maxSpeed, this.motorName);
}
