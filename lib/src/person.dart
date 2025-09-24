import 'dart:math';

class FakePerson {
  static final Random _random = Random();

  static const List<String> _firstNames = [
    'John', 'Jane', 'Michael', 'Sarah', 'David', 'Emily', 'Chris', 'Anna',
    'Robert', 'Lisa', 'James', 'Maria', 'William', 'Jennifer', 'Daniel', 'Linda',
    'Matthew', 'Patricia', 'Joseph', 'Susan', 'Andrew', 'Margaret', 'Thomas', 'Dorothy'
  ];

  static const List<String> _lastNames = [
    'Smith', 'Johnson', 'Williams', 'Brown', 'Jones', 'Garcia', 'Miller', 'Davis',
    'Rodriguez', 'Martinez', 'Hernandez', 'Lopez', 'Gonzalez', 'Wilson', 'Anderson', 'Thomas'
  ];

  static const List<String> _titles = ['Mr.', 'Ms.', 'Dr.', 'Prof.'];

  static const List<String> _genders = ['Male', 'Female', 'Non-binary', 'Other'];

  static const List<String> _pronouns = ['he/him', 'she/her', 'they/them', 'ze/zir'];

  static const List<String> _ethnicities = [
    'Caucasian', 'African American', 'Asian', 'Hispanic', 'Middle Eastern', 'Native American'
  ];

  static String firstName() {
    return _firstNames[_random.nextInt(_firstNames.length)];
  }

  static String lastName() {
    return _lastNames[_random.nextInt(_lastNames.length)];
  }

  static String fullName() {
    return '${firstName()} ${lastName()}';
  }

  static String middleName() {
    return _firstNames[_random.nextInt(_firstNames.length)];
  }

  static String title() {
    return _titles[_random.nextInt(_titles.length)];
  }

  static String nickname() {
    final name = firstName();
    return name.substring(0, min(3, name.length)) + 'y';
  }

  static int age({int min = 18, int max = 80}) {
    return min + _random.nextInt(max - min + 1);
  }

  static String dateOfBirth({int? age}) {
    final birthYear = DateTime.now().year - (age ?? FakePerson.age());
    final month = 1 + _random.nextInt(12);
    final day = 1 + _random.nextInt(28); // Simplify to avoid invalid dates
    return '$birthYear-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2, '0')}';
  }

  static String gender() {
    return _genders[_random.nextInt(_genders.length)];
  }

  static String pronouns() {
    return _pronouns[_random.nextInt(_pronouns.length)];
  }

  static String profilePictureUrl() {
    final id = _random.nextInt(1000);
    return 'https://via.placeholder.com/150/$id';
  }

  static double height() {
    return 150 + _random.nextDouble() * 50; // 150-200 cm
  }

  static double weight() {
    return 50 + _random.nextDouble() * 70; // 50-120 kg
  }

  static String ethnicity() {
    return _ethnicities[_random.nextInt(_ethnicities.length)];
  }
}