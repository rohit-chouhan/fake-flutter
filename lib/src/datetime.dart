import 'dart:math';

class FakeDateTime {
  static final Random _random = Random();

  static const List<String> _daysOfWeek = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];

  static const List<String> _months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  static const List<String> _holidays = [
    'Christmas',
    'New Year\'s Day',
    'Thanksgiving',
    'Halloween',
    'Easter',
    'Valentine\'s Day',
  ];

  static DateTime randomDate({int? startYear, int? endYear}) {
    final start = startYear ?? 1900;
    final end = endYear ?? DateTime.now().year + 10;
    final year = start + _random.nextInt(end - start + 1);
    final month = 1 + _random.nextInt(12);
    final day = 1 + _random.nextInt(28); // Simplify
    return DateTime(year, month, day);
  }

  static DateTime pastDate() {
    return randomDate(endYear: DateTime.now().year);
  }

  static DateTime futureDate() {
    return randomDate(startYear: DateTime.now().year);
  }

  static String time() {
    final hour = _random.nextInt(24).toString().padLeft(2, '0');
    final minute = _random.nextInt(60).toString().padLeft(2, '0');
    final second = _random.nextInt(60).toString().padLeft(2, '0');
    return '$hour:$minute:$second';
  }

  static int timestamp() {
    return randomDate().millisecondsSinceEpoch ~/ 1000;
  }

  static String dayOfWeek() {
    return _daysOfWeek[_random.nextInt(_daysOfWeek.length)];
  }

  static String month() {
    return _months[_random.nextInt(_months.length)];
  }

  static int year() {
    return 1900 + _random.nextInt(200);
  }

  static DateTime birthday() {
    return pastDate();
  }

  static int ageFromBirthday(DateTime birthday) {
    final now = DateTime.now();
    int age = now.year - birthday.year;
    if (now.month < birthday.month ||
        (now.month == birthday.month && now.day < birthday.day)) {
      age--;
    }
    return age;
  }

  static String holiday() {
    return _holidays[_random.nextInt(_holidays.length)];
  }

  static String festival() {
    return holiday(); // Same for simplicity
  }
}
