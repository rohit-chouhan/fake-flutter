import 'dart:math';
import 'dart:convert';

/// A utility class for generating fake authentication and security-related data.
///
/// This class provides static methods to generate passwords, tokens, security questions,
/// and other authentication elements for testing and prototyping.
class FakeAuth {
  static final Random _random = Random();

  static const List<String> _securityQuestions = [
    'What is your mother\'s maiden name?',
    'What was the name of your first pet?',
    'What is your favorite color?',
    'What city were you born in?',
    'What is your favorite movie?',
    'What was your first car?',
    'What is your favorite food?',
    'What is the name of your elementary school?',
  ];

  static const List<String> _specialChars = [
    '!',
    '@',
    '#',
    r'$',
    '%',
    '^',
    '&',
    '*',
  ];

  /// Generates a random password.
  ///
  /// [length] The length of the password (default 8).
  /// Returns a string with at least one uppercase, lowercase, number, and special character.
  static String password({int length = 8}) {
    final buffer = StringBuffer();
    // Ensure at least one uppercase, lowercase, number, special
    buffer.write(String.fromCharCode(65 + _random.nextInt(26))); // A-Z
    buffer.write(String.fromCharCode(97 + _random.nextInt(26))); // a-z
    buffer.write(_random.nextInt(10).toString()); // 0-9
    buffer.write(_specialChars[_random.nextInt(_specialChars.length)]);

    // Fill rest
    for (var i = 4; i < length; i++) {
      final type = _random.nextInt(4);
      switch (type) {
        case 0:
          buffer.write(String.fromCharCode(65 + _random.nextInt(26)));
          break;
        case 1:
          buffer.write(String.fromCharCode(97 + _random.nextInt(26)));
          break;
        case 2:
          buffer.write(_random.nextInt(10));
          break;
        case 3:
          buffer.write(_specialChars[_random.nextInt(_specialChars.length)]);
          break;
      }
    }
    return buffer.toString();
  }

  /// Generates a fake JWT token.
  ///
  /// Returns a base64url encoded JWT with fake header, payload, and signature.
  static String jwtToken() {
    // Fake JWT structure: header.payload.signature
    final header = base64Url.encode(utf8.encode('{"alg":"HS256","typ":"JWT"}'));
    final payload = base64Url.encode(
      utf8.encode(
        '{"sub":"${_random.nextInt(1000000)}","iat":${DateTime.now().millisecondsSinceEpoch ~/ 1000},"exp":${(DateTime.now().add(Duration(hours: 1)).millisecondsSinceEpoch ~/ 1000)}}',
      ),
    );
    final signature = _randomHex(43); // Fake signature
    return '$header.$payload.$signature';
  }

  /// Generates a fake OAuth token.
  ///
  /// Returns a random hexadecimal string.
  static String oauthToken() {
    return _randomHex(32);
  }

  /// Generates a fake API key.
  ///
  /// Returns a random hexadecimal string.
  static String apiKey() {
    return _randomHex(32);
  }

  /// Generates a fake access token.
  ///
  /// Returns a Bearer token with random hex.
  static String accessToken() {
    return 'Bearer ${_randomHex(32)}';
  }

  /// Generates a fake refresh token.
  ///
  /// Returns a longer random hexadecimal string.
  static String refreshToken() {
    return _randomHex(64);
  }

  /// Generates a random security question.
  ///
  /// Returns one of the predefined security questions.
  static String securityQuestion() {
    return _securityQuestions[_random.nextInt(_securityQuestions.length)];
  }

  /// Generates a random security answer.
  ///
  /// Returns one of the predefined answers.
  static String securityAnswer() {
    // Simple fake answers
    final answers = [
      'Smith',
      'Fluffy',
      'Blue',
      'New York',
      'Star Wars',
      'Toyota',
      'Pizza',
      'Lincoln Elementary',
    ];
    return answers[_random.nextInt(answers.length)];
  }

  /// Generates a fake session ID.
  ///
  /// Returns a random hexadecimal string.
  static String sessionId() {
    return _randomHex(32);
  }

  /// Generates a fake CSRF token.
  ///
  /// Returns a random hexadecimal string.
  static String csrfToken() {
    return _randomHex(32);
  }

  static String _randomHex(int length) {
    const chars = '0123456789abcdef';
    final buffer = StringBuffer();
    for (var i = 0; i < length; i++) {
      buffer.write(chars[_random.nextInt(chars.length)]);
    }
    return buffer.toString();
  }

  static String twoFactorCode() {
    return _random.nextInt(1000000).toString().padLeft(6, '0');
  }

  static String recoveryCode() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final buffer = StringBuffer();
    for (var i = 0; i < 10; i++) {
      buffer.write(chars[_random.nextInt(chars.length)]);
    }
    return buffer.toString();
  }
}
