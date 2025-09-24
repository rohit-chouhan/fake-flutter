import 'dart:math';

class FakeContact {
  static final Random _random = Random();

  static const List<String> _domains = [
    'gmail.com', 'yahoo.com', 'hotmail.com', 'outlook.com', 'example.com'
  ];

  static const List<String> _socialPlatforms = [
    'twitter', 'facebook', 'instagram', 'linkedin', 'github'
  ];

  static const List<String> _messagingApps = [
    'whatsapp', 'telegram', 'signal', 'discord'
  ];

  static const List<String> _notes = [
    'Work colleague', 'Family friend', 'Business partner', 'Old acquaintance', 'New contact'
  ];

  static String email({String? firstName, String? lastName}) {
    final fn = firstName ?? 'john';
    final ln = lastName ?? 'doe';
    final domain = _domains[_random.nextInt(_domains.length)];
    return '${fn.toLowerCase()}.${ln.toLowerCase()}@${domain}';
  }

  static String phoneNumber() {
    final areaCode = 200 + _random.nextInt(800);
    final exchange = 200 + _random.nextInt(800);
    final number = 1000 + _random.nextInt(9000);
    return '+1-${areaCode}-${exchange}-${number}';
  }

  static String websiteUrl() {
    final domains = ['example.com', 'testsite.org', 'fakeweb.net'];
    final domain = domains[_random.nextInt(domains.length)];
    return 'https://www.${domain}';
  }

  static String socialMediaHandle({String? platform}) {
    final plat = platform ?? _socialPlatforms[_random.nextInt(_socialPlatforms.length)];
    final username = 'user${_random.nextInt(10000)}';
    return '@${username}';
  }

  static String messagingAppId({String? app}) {
    final application = app ?? _messagingApps[_random.nextInt(_messagingApps.length)];
    final id = '+1${_random.nextInt(900000000) + 100000000}';
    return id;
  }

  static String contactNotes() {
    return _notes[_random.nextInt(_notes.length)];
  }

  static String countryCode() {
    final codes = ['+1', '+44', '+33', '+49', '+81', '+86', '+91', '+61'];
    return codes[_random.nextInt(codes.length)];
  }

  static String areaCode() {
    return (200 + _random.nextInt(800)).toString();
  }

  static String faxNumber() {
    return phoneNumber(); // Same format as phone
  }

  static String mobileNumber() {
    return phoneNumber();
  }

  static String landlineNumber() {
    return phoneNumber();
  }

  static String internationalPhoneNumber() {
    return '${countryCode()} ${phoneNumber().substring(1)}';
  }

  static String phoneExtension() {
    return _random.nextInt(10000).toString().padLeft(4, '0');
  }
}