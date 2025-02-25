import 'type/amphibian_type.dart';
import 'vehicle.dart';

class Submarine extends Vehicle with AmphibianType {
  String maxDepth;
  String maxDiveTime;

  Submarine(
    super.name,
    super.color,
    super.maxSpeed,
    this.maxDepth,
    this.maxDiveTime,
  );

  @override
  void swim() {
    print('Swimming...');
  }
}
