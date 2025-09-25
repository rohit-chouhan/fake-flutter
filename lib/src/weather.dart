import 'dart:math';

class FakeWeather {
  static final Random _random = Random();

  static const List<String> _conditions = [
    'Sunny',
    'Partly Cloudy',
    'Cloudy',
    'Overcast',
    'Rain',
    'Light Rain',
    'Heavy Rain',
    'Thunderstorm',
    'Snow',
    'Light Snow',
    'Heavy Snow',
    'Fog',
    'Mist',
    'Haze',
    'Clear',
    'Windy',
    'Breezy',
  ];

  static const List<double> _temperatures = [
    -10,
    -5,
    0,
    5,
    10,
    15,
    20,
    25,
    30,
    35,
    40,
  ];

  static String condition() {
    return _conditions[_random.nextInt(_conditions.length)];
  }

  static double temperature({bool celsius = true}) {
    final temp =
        _temperatures[_random.nextInt(_temperatures.length)] +
        _random.nextDouble() * 10 -
        5;
    return celsius ? temp : (temp * 9 / 5) + 32;
  }

  static int humidity() {
    return 10 + _random.nextInt(91); // 10-100%
  }

  static double windSpeed() {
    return _random.nextDouble() * 50; // 0-50 km/h or mph
  }

  static String windDirection() {
    const directions = ['N', 'NE', 'E', 'SE', 'S', 'SW', 'W', 'NW'];
    return directions[_random.nextInt(directions.length)];
  }

  static double pressure() {
    return 980 + _random.nextDouble() * 40; // 980-1020 hPa
  }

  static double visibility() {
    return _random.nextDouble() * 20; // 0-20 km
  }

  static double uvIndex() {
    return _random.nextDouble() * 11; // 0-11
  }

  static double precipitation() {
    return _random.nextDouble() * 50; // 0-50mm
  }

  static String airQuality() {
    const qualities = [
      'Good',
      'Moderate',
      'Unhealthy',
      'Very Unhealthy',
      'Hazardous',
    ];
    return qualities[_random.nextInt(qualities.length)];
  }

  static int airQualityIndex() {
    return _random.nextInt(500) + 1; // 1-500
  }

  static List<Map<String, dynamic>> forecast({int days = 7}) {
    final data = <Map<String, dynamic>>[];
    final currentYear = DateTime.now().year;
    final currentMonth = DateTime.now().month;
    final currentDay = DateTime.now().day;

    for (var i = 0; i < days; i++) {
      final date = DateTime(currentYear, currentMonth, currentDay + i);
      data.add({
        'date': date.toIso8601String().split('T')[0],
        'condition': condition(),
        'highTemp': temperature() + 5 + _random.nextDouble() * 10,
        'lowTemp': temperature() - 5 - _random.nextDouble() * 10,
        'humidity': humidity(),
        'windSpeed': windSpeed(),
        'precipitation': precipitation(),
      });
    }
    return data;
  }

  static Map<String, dynamic> currentWeather() {
    return {
      'condition': condition(),
      'temperature': temperature(),
      'feelsLike': temperature() + _random.nextDouble() * 6 - 3,
      'humidity': humidity(),
      'windSpeed': windSpeed(),
      'windDirection': windDirection(),
      'pressure': pressure(),
      'visibility': visibility(),
      'uvIndex': uvIndex(),
      'precipitation': precipitation(),
      'airQuality': airQuality(),
      'airQualityIndex': airQualityIndex(),
    };
  }

  static Map<String, dynamic> weatherAlert() {
    const alerts = [
      'Heat Advisory',
      'Winter Storm Warning',
      'Flood Warning',
      'Tornado Watch',
      'Hurricane Warning',
    ];
    return {
      'type': alerts[_random.nextInt(alerts.length)],
      'severity': [
        'Minor',
        'Moderate',
        'Severe',
        'Extreme',
      ][_random.nextInt(4)],
      'description': 'Weather alert for the area',
      'startTime': DateTime.now(),
      'endTime': DateTime.now().add(Duration(hours: _random.nextInt(24))),
    };
  }

  static Map<String, dynamic> climateData() {
    return {
      'averageTemp': temperature(),
      'averageHumidity': humidity(),
      'averageWindSpeed': windSpeed(),
      'totalPrecipitation': precipitation() * 30, // Monthly
      'dominantCondition': condition(),
      'temperatureRange': {
        'min': temperature() - 10,
        'max': temperature() + 10,
      },
    };
  }
}
