import 'dart:math';

/// A utility class for generating fake address-related data.
///
/// This class provides static methods to generate various components of addresses,
/// such as streets, cities, postal codes, and more, for testing and prototyping purposes.
class FakeAddress {
  static final Random _random = Random();

  static const List<String> _streets = [
    'Main St',
    'Oak Ave',
    'Pine Rd',
    'Elm St',
    'Maple Dr',
    'Cedar Ln',
  ];

  static const List<String> _cities = [
    'New York',
    'Los Angeles',
    'Chicago',
    'Houston',
    'Phoenix',
    'Philadelphia',
  ];

  static const List<String> _states = [
    'California',
    'Texas',
    'Florida',
    'New York',
    'Pennsylvania',
    'Illinois',
  ];

  static const List<String> _countries = [
    'USA',
    'Canada',
    'UK',
    'Germany',
    'France',
    'Australia',
  ];

  static const List<String> _landmarks = [
    'Central Park',
    'Times Square',
    'Golden Gate Bridge',
    'Statue of Liberty',
    'Eiffel Tower',
  ];

  static const List<String> _timezones = [
    'America/New_York',
    'America/Los_Angeles',
    'Europe/London',
    'Asia/Tokyo',
    'Australia/Sydney',
  ];

  /// Generates a random street address.
  ///
  /// Returns a string in the format "number street name", e.g., "123 Main St".
  static String street() {
    return '${_random.nextInt(9999) + 1} ${_streets[_random.nextInt(_streets.length)]}';
  }

  /// Generates a random building number.
  ///
  /// Returns a string representing a building number between 1 and 999.
  static String buildingNumber() {
    return (_random.nextInt(999) + 1).toString();
  }

  /// Generates a random suite or apartment designation.
  ///
  /// Returns a string like "Apt 5" or "Suite 12".
  static String suiteApartment() {
    final types = ['Apt', 'Suite', 'Unit'];
    final type = types[_random.nextInt(types.length)];
    return '$type ${_random.nextInt(100) + 1}';
  }

  /// Generates a random city name.
  ///
  /// Returns one of the predefined city names.
  static String city() {
    return _cities[_random.nextInt(_cities.length)];
  }

  /// Generates a random state or province name.
  ///
  /// Returns one of the predefined state names.
  static String stateProvince() {
    return _states[_random.nextInt(_states.length)];
  }

  /// Generates a random country name.
  ///
  /// Returns one of the predefined country names.
  static String country() {
    return _countries[_random.nextInt(_countries.length)];
  }

  /// Generates a random postal code.
  ///
  /// Returns a 5-digit postal code as a string.
  static String postalCode() {
    return '${_random.nextInt(90000) + 10000}';
  }

  /// Generates a random latitude coordinate.
  ///
  /// Returns a double between -90 and 90 degrees.
  static double latitude() {
    return -90 + _random.nextDouble() * 180; // -90 to 90
  }

  /// Generates a random longitude coordinate.
  ///
  /// Returns a double between -180 and 180 degrees.
  static double longitude() {
    return -180 + _random.nextDouble() * 360; // -180 to 180
  }

  /// Generates a complete random full address.
  ///
  /// Returns a formatted address string including building number, street, city, state, postal code, and country.
  static String fullAddress() {
    return '${buildingNumber()} ${street()}, ${city()}, ${stateProvince()} ${postalCode()}, ${country()}';
  }

  /// Generates a random landmark name.
  ///
  /// Returns one of the predefined landmark names.
  static String landmark() {
    return _landmarks[_random.nextInt(_landmarks.length)];
  }

  /// Generates a random timezone identifier.
  ///
  /// Returns one of the predefined timezone strings.
  static String timezone() {
    return _timezones[_random.nextInt(_timezones.length)];
  }
}
