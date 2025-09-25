import 'dart:math';

class FakeMisc {
  static final Random _random = Random();

  static const List<String> _adjectives = [
    'big',
    'small',
    'fast',
    'slow',
    'happy',
    'sad',
    'bright',
    'dark',
  ];

  static const List<String> _nouns = [
    'house',
    'car',
    'tree',
    'book',
    'phone',
    'computer',
    'dog',
    'cat',
  ];

  static const List<String> _verbs = [
    'run',
    'jump',
    'eat',
    'sleep',
    'read',
    'write',
    'play',
    'work',
  ];

  static const List<String> _vehicles = [
    'Toyota Camry',
    'Honda Civic',
    'Ford Mustang',
    'BMW 3 Series',
    'Tesla Model 3',
  ];

  static const List<String> _foods = [
    'Pizza',
    'Burger',
    'Pasta',
    'Salad',
    'Sushi',
    'Tacos',
    'Ice Cream',
  ];

  static const List<String> _drinks = [
    'Coffee',
    'Tea',
    'Soda',
    'Water',
    'Juice',
    'Beer',
    'Wine',
  ];

  static const List<String> _sportsTeams = [
    'Los Angeles Lakers',
    'New York Yankees',
    'Manchester United',
    'Real Madrid',
  ];

  static const List<String> _games = [
    'Chess',
    'Monopoly',
    'Poker',
    'Basketball',
    'Soccer',
  ];

  static const List<String> _weather = [
    'Sunny',
    'Cloudy',
    'Rainy',
    'Snowy',
    'Windy',
    'Stormy',
  ];

  static const List<String> _syllables = [
    'ar',
    'el',
    'in',
    'or',
    'an',
    'th',
    'er',
    'on',
    'at',
    'en',
  ];

  static const List<String> _planets = [
    'Mercury',
    'Venus',
    'Earth',
    'Mars',
    'Jupiter',
    'Saturn',
    'Uranus',
    'Neptune',
  ];

  static const List<String> _stars = [
    'Sirius',
    'Vega',
    'Betelgeuse',
    'Rigel',
    'Aldebaran',
  ];

  static const List<String> _chemicalElements = [
    'Hydrogen',
    'Helium',
    'Lithium',
    'Beryllium',
    'Boron',
    'Carbon',
    'Nitrogen',
    'Oxygen',
  ];

  static const List<String> _bloodTypes = [
    'A+',
    'A-',
    'B+',
    'B-',
    'AB+',
    'AB-',
    'O+',
    'O-',
  ];

  static String colorHex() {
    final r = _random.nextInt(256).toRadixString(16).padLeft(2, '0');
    final g = _random.nextInt(256).toRadixString(16).padLeft(2, '0');
    final b = _random.nextInt(256).toRadixString(16).padLeft(2, '0');
    return '#$r$g$b';
  }

  static String colorRgb() {
    final r = _random.nextInt(256);
    final g = _random.nextInt(256);
    final b = _random.nextInt(256);
    return 'rgb($r, $g, $b)';
  }

  static String colorHsl() {
    final h = _random.nextInt(360);
    final s = _random.nextInt(101);
    final l = _random.nextInt(101);
    return 'hsl($h, $s%, $l%)';
  }

  static String uuid() {
    final parts = [
      _randomHex(8),
      _randomHex(4),
      _randomHex(4),
      _randomHex(4),
      _randomHex(12),
    ];
    return parts.join('-');
  }

  static String _randomHex(int length) {
    const chars = '0123456789abcdef';
    final buffer = StringBuffer();
    for (var i = 0; i < length; i++) {
      buffer.write(chars[_random.nextInt(chars.length)]);
    }
    return buffer.toString();
  }

  static bool boolean() {
    return _random.nextBool();
  }

  static int randomNumber({int min = 0, int max = 100}) {
    return min + _random.nextInt(max - min + 1);
  }

  static double randomDecimal({double min = 0.0, double max = 100.0}) {
    return min + _random.nextDouble() * (max - min);
  }

  static String vehicle() {
    return _vehicles[_random.nextInt(_vehicles.length)];
  }

  static String food() {
    return _foods[_random.nextInt(_foods.length)];
  }

  static String drink() {
    return _drinks[_random.nextInt(_drinks.length)];
  }

  static String sportsTeam() {
    return _sportsTeams[_random.nextInt(_sportsTeams.length)];
  }

  static String game() {
    return _games[_random.nextInt(_games.length)];
  }

  static String weatherInfo() {
    return _weather[_random.nextInt(_weather.length)];
  }

  static String adjective() {
    return _adjectives[_random.nextInt(_adjectives.length)];
  }

  static String noun() {
    return _nouns[_random.nextInt(_nouns.length)];
  }

  static String verb() {
    return _verbs[_random.nextInt(_verbs.length)];
  }

  static String fantasyName() {
    final syllables = 2 + _random.nextInt(3);
    final name = StringBuffer();
    for (var i = 0; i < syllables; i++) {
      name.write(_syllables[_random.nextInt(_syllables.length)]);
    }
    final nameStr = name.toString();
    return nameStr.replaceFirst(nameStr[0], nameStr[0].toUpperCase());
  }

  static String planetName() {
    return _planets[_random.nextInt(_planets.length)];
  }

  static String starName() {
    return _stars[_random.nextInt(_stars.length)];
  }

  static String chemicalElement() {
    return _chemicalElements[_random.nextInt(_chemicalElements.length)];
  }

  static String medicalData() {
    return _bloodTypes[_random.nextInt(_bloodTypes.length)];
  }
}
