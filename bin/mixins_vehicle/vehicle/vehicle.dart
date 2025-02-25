class Vehicle {
  String name;
  String color;
  int maxSpeed;

  Vehicle(this.name, this.color, this.maxSpeed);

  void show() {
    print('Name: $name');
    print('Color: $color');
    print('Max Speed: $maxSpeed');
  }

  void run() {
    print('Running...');
  }

  void stop() {
    print('Stopped');
  }

  void honk() {
    print('Honking...');
  }

  void turnOn() {
    print('Turned on the vehicle $name');
  }

  void turnOff() {
    print('Turned off the vehicle $name');
  }
}
