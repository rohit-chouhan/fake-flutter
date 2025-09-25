import 'dart:math';

class FakeGovernment {
  static final Random _random = Random();

  static const List<String> _departments = [
    'Department of State',
    'Department of Defense',
    'Department of Justice',
    'Department of Treasury',
    'Department of Health and Human Services',
    'Department of Education',
    'Department of Transportation',
    'Department of Energy',
    'Department of Homeland Security',
    'Department of Veterans Affairs',
  ];

  static const List<String> _agencies = [
    'FBI',
    'CIA',
    'NSA',
    'IRS',
    'FDA',
    'EPA',
    'FCC',
    'FTC',
    'SEC',
    'NASA',
  ];

  static const List<String> _idTypes = [
    'Driver License',
    'Passport',
    'Social Security',
    'State ID',
    'Military ID',
    'Employee ID',
    'Student ID',
    'Medical ID',
    'Voter ID',
  ];

  static const List<String> _licenseTypes = [
    'Driver License',
    'Professional License',
    'Business License',
    'Marriage License',
    'Concealed Carry',
    'Pilot License',
    'Real Estate License',
    'Medical License',
  ];

  static const List<String> _officials = [
    'President',
    'Vice President',
    'Senator',
    'Congressman',
    'Governor',
    'Mayor',
    'Judge',
    'Attorney General',
    'Secretary of State',
    'Chief of Police',
  ];

  static String department() {
    return _departments[_random.nextInt(_departments.length)];
  }

  static String agency() {
    return _agencies[_random.nextInt(_agencies.length)];
  }

  static String idType() {
    return _idTypes[_random.nextInt(_idTypes.length)];
  }

  static String licenseType() {
    return _licenseTypes[_random.nextInt(_licenseTypes.length)];
  }

  static String governmentOfficial() {
    return _officials[_random.nextInt(_officials.length)];
  }

  static String ssn() {
    final part1 = _random.nextInt(900) + 100;
    final part2 = _random.nextInt(90) + 10;
    final part3 = _random.nextInt(9000) + 1000;
    return '$part1-$part2-$part3';
  }

  static String driverLicense() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final buffer = StringBuffer();
    for (var i = 0; i < 8; i++) {
      buffer.write(chars[_random.nextInt(chars.length)]);
    }
    return buffer.toString();
  }

  static String passportNumber() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final buffer = StringBuffer();
    for (var i = 0; i < 9; i++) {
      buffer.write(chars[_random.nextInt(chars.length)]);
    }
    return buffer.toString();
  }

  static List<Map<String, dynamic>> weatherForecast({int days = 7}) {
    final data = <Map<String, dynamic>>[];
    final currentYear = DateTime.now().year;
    final currentMonth = DateTime.now().month;
    final currentDay = DateTime.now().day;

    for (var i = 0; i < days; i++) {
      final date = DateTime(currentYear, currentMonth, currentDay + i);
      final temp = -10 + _random.nextDouble() * 40; // -10 to 30
      final conditions = ['Sunny', 'Cloudy', 'Rainy', 'Snowy'];
      final condition = conditions[_random.nextInt(conditions.length)];
      final humidity = 20 + _random.nextInt(61);
      final windSpeed = _random.nextDouble() * 30;

      data.add({
        'date': date.toIso8601String().split('T')[0],
        'temperature': temp.roundToDouble(),
        'condition': condition,
        'humidity': humidity,
        'windSpeed': windSpeed.roundToDouble(),
        'precipitation': _random.nextDouble() * 10,
      });
    }
    return data;
  }

  static Map<String, dynamic> currentWeather() {
    return {
      'temperature': -10 + _random.nextDouble() * 40,
      'condition': ['Sunny', 'Cloudy', 'Rainy'][_random.nextInt(3)],
      'humidity': 20 + _random.nextInt(61),
      'windSpeed': _random.nextDouble() * 30,
      'pressure': 980 + _random.nextDouble() * 40,
      'visibility': 5 + _random.nextDouble() * 15, // 5-20 miles
    };
  }

  static Map<String, dynamic> weatherAlert() {
    final alerts = [
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
}
