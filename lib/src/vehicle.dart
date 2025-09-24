import 'dart:math';

class FakeVehicle {
  static final Random _random = Random();

  static const List<String> _brands = [
    'Toyota', 'Honda', 'Ford', 'Chevrolet', 'BMW', 'Mercedes-Benz', 'Audi', 'Volkswagen',
    'Nissan', 'Hyundai', 'Kia', 'Subaru', 'Mazda', 'Lexus', 'Tesla', 'Volvo'
  ];

  static const List<String> _models = [
    'Camry', 'Civic', 'Mustang', 'Corvette', '3 Series', 'C-Class', 'A4', 'Golf',
    'Altima', 'Elantra', 'Sportage', 'Outback', 'CX-5', 'RX', 'Model 3', 'XC90'
  ];

  static const List<String> _colors = [
    'White', 'Black', 'Silver', 'Gray', 'Blue', 'Red', 'Green', 'Brown', 'Yellow', 'Orange'
  ];

  static const List<String> _fuelTypes = [
    'Gasoline', 'Diesel', 'Electric', 'Hybrid', 'Hydrogen'
  ];

  static const List<String> _vehicleTypes = [
    'Sedan', 'SUV', 'Truck', 'Hatchback', 'Coupe', 'Convertible', 'Wagon', 'Van'
  ];

  static String brand() {
    return _brands[_random.nextInt(_brands.length)];
  }

  static String model() {
    return _models[_random.nextInt(_models.length)];
  }

  static String vehicle() {
    return '${brand()} ${model()}';
  }

  static String color() {
    return _colors[_random.nextInt(_colors.length)];
  }

  static String fuelType() {
    return _fuelTypes[_random.nextInt(_fuelTypes.length)];
  }

  static String vehicleType() {
    return _vehicleTypes[_random.nextInt(_vehicleTypes.length)];
  }

  static String licensePlate() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final buffer = StringBuffer();
    for (var i = 0; i < 7; i++) {
      buffer.write(chars[_random.nextInt(chars.length)]);
    }
    return buffer.toString();
  }

  static String vin() {
    const chars = 'ABCDEFGHJKLMNPRSTUVWXYZ0123456789';
    final buffer = StringBuffer();
    for (var i = 0; i < 17; i++) {
      buffer.write(chars[_random.nextInt(chars.length)]);
    }
    return buffer.toString();
  }

  static String registrationNumber() {
    return licensePlate();
  }

  static int year() {
    return 1990 + _random.nextInt(34); // 1990-2023
  }

  static int mileage() {
    return _random.nextInt(200000); // 0-200k miles/km
  }

  static double fuelEfficiency() {
    return 15 + _random.nextDouble() * 25; // 15-40 mpg or l/100km
  }

  static String transmission() {
    return ['Automatic', 'Manual', 'CVT'][_random.nextInt(3)];
  }

  static String drivetrain() {
    return ['FWD', 'RWD', 'AWD', '4WD'][_random.nextInt(4)];
  }

  static String engineType() {
    return ['V6', 'V8', 'I4', 'I6', 'Electric', 'Hybrid'][_random.nextInt(6)];
  }

  static int horsepower() {
    return 100 + _random.nextInt(400); // 100-500 hp
  }

  static String makeAndModel() {
    return '${brand()} ${model()}';
  }

  static String fullVehicleDescription() {
    return '${year()} ${makeAndModel()} ${color()} ${vehicleType()}';
  }
}