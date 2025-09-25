import 'dart:math';

/// A utility class for generating fake person-related data.
///
/// This class provides static methods to generate various personal information
/// such as names, ages, genders, and physical attributes for testing and prototyping.
class FakePerson {
  static final Random _random = Random();

  static const List<String> _firstNames = [
    'John',
    'Jane',
    'Michael',
    'Sarah',
    'David',
    'Emily',
    'Chris',
    'Anna',
    'Robert',
    'Lisa',
    'James',
    'Maria',
    'William',
    'Jennifer',
    'Daniel',
    'Linda',
    'Matthew',
    'Patricia',
    'Joseph',
    'Susan',
    'Andrew',
    'Margaret',
    'Thomas',
    'Dorothy',
  ];

  static const List<String> _lastNames = [
    'Smith',
    'Johnson',
    'Williams',
    'Brown',
    'Jones',
    'Garcia',
    'Miller',
    'Davis',
    'Rodriguez',
    'Martinez',
    'Hernandez',
    'Lopez',
    'Gonzalez',
    'Wilson',
    'Anderson',
    'Thomas',
  ];

  static const List<String> _titles = ['Mr.', 'Ms.', 'Dr.', 'Prof.'];

  static const List<String> _genders = [
    'Male',
    'Female',
    'Non-binary',
    'Other',
  ];

  static const List<String> _pronouns = [
    'he/him',
    'she/her',
    'they/them',
    'ze/zir',
  ];

  static const List<String> _ethnicities = [
    'Caucasian',
    'African American',
    'Asian',
    'Hispanic',
    'Middle Eastern',
    'Native American',
  ];

  /// Generates a random first name.
  ///
  /// Returns one of the predefined first names.
  static String firstName() {
    return _firstNames[_random.nextInt(_firstNames.length)];
  }

  /// Generates a random last name.
  ///
  /// Returns one of the predefined last names.
  static String lastName() {
    return _lastNames[_random.nextInt(_lastNames.length)];
  }

  /// Generates a random full name.
  ///
  /// Returns a combination of first and last name.
  static String fullName() {
    return '${firstName()} ${lastName()}';
  }

  /// Generates a random middle name.
  ///
  /// Returns a random first name as middle name.
  static String middleName() {
    return _firstNames[_random.nextInt(_firstNames.length)];
  }

  /// Generates a random title.
  ///
  /// Returns one of the predefined titles like 'Mr.', 'Ms.', etc.
  static String title() {
    return _titles[_random.nextInt(_titles.length)];
  }

  /// Generates a random nickname.
  ///
  /// Returns a shortened version of a first name with 'y' suffix.
  static String nickname() {
    final name = firstName();
    return '${name.substring(0, min(3, name.length))}y';
  }

  /// Generates a random age.
  ///
  /// [min] The minimum age (default 18).
  /// [max] The maximum age (default 80).
  /// Returns an integer between min and max inclusive.
  static int age({int min = 18, int max = 80}) {
    return min + _random.nextInt(max - min + 1);
  }

  /// Generates a random date of birth.
  ///
  /// [age] Optional specific age; if null, generates a random age.
  /// Returns a date string in YYYY-MM-DD format.
  static String dateOfBirth({int? age}) {
    final birthYear = DateTime.now().year - (age ?? FakePerson.age());
    final month = 1 + _random.nextInt(12);
    final day = 1 + _random.nextInt(28); // Simplify to avoid invalid dates
    return '$birthYear-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2, '0')}';
  }

  /// Generates a random gender.
  ///
  /// Returns one of the predefined gender options.
  static String gender() {
    return _genders[_random.nextInt(_genders.length)];
  }

  /// Generates random pronouns.
  ///
  /// Returns one of the predefined pronoun sets.
  static String pronouns() {
    return _pronouns[_random.nextInt(_pronouns.length)];
  }

  /// Generates a random profile picture URL.
  ///
  /// Returns a placeholder image URL from via.placeholder.com.
  static String profilePictureUrl() {
    final id = _random.nextInt(1000);
    return 'https://via.placeholder.com/150/$id';
  }

  /// Generates a random height.
  ///
  /// Returns a double between 150 and 200 cm.
  static double height() {
    return 150 + _random.nextDouble() * 50; // 150-200 cm
  }

  /// Generates a random weight.
  ///
  /// Returns a double between 50 and 120 kg.
  static double weight() {
    return 50 + _random.nextDouble() * 70; // 50-120 kg
  }

  /// Generates a random ethnicity.
  ///
  /// Returns one of the predefined ethnicity options.
  static String ethnicity() {
    return _ethnicities[_random.nextInt(_ethnicities.length)];
  }
}
