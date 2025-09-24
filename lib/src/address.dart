import 'dart:math';

class FakeAddress {
  static final Random _random = Random();

  static const List<String> _streets = [
    'Main St', 'Oak Ave', 'Pine Rd', 'Elm St', 'Maple Dr', 'Cedar Ln'
  ];

  static const List<String> _cities = [
    'New York', 'Los Angeles', 'Chicago', 'Houston', 'Phoenix', 'Philadelphia'
  ];

  static const List<String> _states = [
    'California', 'Texas', 'Florida', 'New York', 'Pennsylvania', 'Illinois'
  ];

  static const List<String> _countries = [
    'USA', 'Canada', 'UK', 'Germany', 'France', 'Australia'
  ];

  static const List<String> _landmarks = [
    'Central Park', 'Times Square', 'Golden Gate Bridge', 'Statue of Liberty', 'Eiffel Tower'
  ];

  static const List<String> _timezones = [
    'America/New_York', 'America/Los_Angeles', 'Europe/London', 'Asia/Tokyo', 'Australia/Sydney'
  ];

  static String street() {
    return '${_random.nextInt(9999) + 1} ${_streets[_random.nextInt(_streets.length)]}';
  }

  static String buildingNumber() {
    return (_random.nextInt(999) + 1).toString();
  }

  static String suiteApartment() {
    final types = ['Apt', 'Suite', 'Unit'];
    final type = types[_random.nextInt(types.length)];
    return '$type ${_random.nextInt(100) + 1}';
  }

  static String city() {
    return _cities[_random.nextInt(_cities.length)];
  }

  static String stateProvince() {
    return _states[_random.nextInt(_states.length)];
  }

  static String country() {
    return _countries[_random.nextInt(_countries.length)];
  }

  static String postalCode() {
    return '${_random.nextInt(90000) + 10000}';
  }

  static double latitude() {
    return -90 + _random.nextDouble() * 180; // -90 to 90
  }

  static double longitude() {
    return -180 + _random.nextDouble() * 360; // -180 to 180
  }

  static String fullAddress() {
    return '${buildingNumber()} ${street()}, ${city()}, ${stateProvince()} ${postalCode()}, ${country()}';
  }

  static String landmark() {
    return _landmarks[_random.nextInt(_landmarks.length)];
  }

  static String timezone() {
    return _timezones[_random.nextInt(_timezones.length)];
  }
}