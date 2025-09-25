import 'dart:math';
import 'address.dart';

/// A utility class for generating fake company-related data.
///
/// This class provides static methods to generate company names, job titles,
/// departments, and other business information for testing and prototyping.
class FakeCompany {
  static final Random _random = Random();

  static const List<String> _companyNames = [
    'Acme Corp',
    'Tech Solutions',
    'Global Enterprises',
    'Innovate Ltd',
    'Prime Industries',
  ];

  static const List<String> _departments = [
    'Engineering',
    'Sales',
    'Marketing',
    'Human Resources',
    'Finance',
    'Operations',
  ];

  static const List<String> _jobTitles = [
    'Software Engineer',
    'Product Manager',
    'Data Analyst',
    'Designer',
    'Consultant',
  ];

  static const List<String> _industries = [
    'Technology',
    'Finance',
    'Healthcare',
    'Retail',
    'Manufacturing',
    'Education',
  ];

  static const List<String> _slogans = [
    'Innovating the future',
    'Quality first',
    'Your success is our mission',
    'Leading with excellence',
  ];

  static String companyName() {
    return _companyNames[_random.nextInt(_companyNames.length)];
  }

  static String department() {
    return _departments[_random.nextInt(_departments.length)];
  }

  static String jobTitle() {
    return _jobTitles[_random.nextInt(_jobTitles.length)];
  }

  static String employeeId() {
    return 'EMP${_random.nextInt(100000).toString().padLeft(5, '0')}';
  }

  static String businessEmail({String? firstName, String? lastName}) {
    final fn = firstName ?? 'john';
    final ln = lastName ?? 'doe';
    final company = companyName().toLowerCase().replaceAll(' ', '');
    return '${fn.toLowerCase()}.${ln.toLowerCase()}@$company.com';
  }

  static String industry() {
    return _industries[_random.nextInt(_industries.length)];
  }

  static String slogan() {
    return _slogans[_random.nextInt(_slogans.length)];
  }

  static String officeLocation() {
    return FakeAddress.fullAddress();
  }
}
