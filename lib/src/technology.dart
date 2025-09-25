import 'dart:math';

class FakeTechnology {
  static final Random _random = Random();

  static const List<String> _programmingLanguages = [
    'JavaScript',
    'Python',
    'Java',
    'C#',
    'C++',
    'PHP',
    'Ruby',
    'Swift',
    'Kotlin',
    'Go',
    'Rust',
    'TypeScript',
    'Dart',
    'Scala',
    'R',
    'MATLAB',
  ];

  static const List<String> _frameworks = [
    'React',
    'Angular',
    'Vue.js',
    'Express.js',
    'Django',
    'Flask',
    'Spring',
    'ASP.NET',
    'Laravel',
    'Ruby on Rails',
    'Flutter',
    'React Native',
    'Ionic',
  ];

  static const List<String> _databases = [
    'MySQL',
    'PostgreSQL',
    'MongoDB',
    'Redis',
    'SQLite',
    'Oracle',
    'SQL Server',
    'Cassandra',
    'Elasticsearch',
    'Firebase',
    'DynamoDB',
  ];

  static const List<String> _operatingSystems = [
    'Windows',
    'macOS',
    'Linux',
    'Ubuntu',
    'CentOS',
    'Android',
    'iOS',
    'Chrome OS',
  ];

  static const List<String> _devices = [
    'iPhone',
    'Android Phone',
    'iPad',
    'Android Tablet',
    'MacBook',
    'Windows Laptop',
    'Desktop PC',
    'Chromebook',
    'Smart TV',
    'Smart Watch',
    'Gaming Console',
  ];

  static const List<String> _browsers = [
    'Chrome',
    'Firefox',
    'Safari',
    'Edge',
    'Opera',
    'Brave',
    'Vivaldi',
  ];

  static const List<String> _fileFormats = [
    'PDF',
    'DOCX',
    'XLSX',
    'PPTX',
    'TXT',
    'CSV',
    'JSON',
    'XML',
    'HTML',
    'CSS',
    'JPG',
    'PNG',
    'GIF',
    'MP4',
    'MP3',
    'ZIP',
    'RAR',
  ];

  static String programmingLanguage() {
    return _programmingLanguages[_random.nextInt(_programmingLanguages.length)];
  }

  static String framework() {
    return _frameworks[_random.nextInt(_frameworks.length)];
  }

  static String database() {
    return _databases[_random.nextInt(_databases.length)];
  }

  static String operatingSystem() {
    return _operatingSystems[_random.nextInt(_operatingSystems.length)];
  }

  static String device() {
    return _devices[_random.nextInt(_devices.length)];
  }

  static String browser() {
    return _browsers[_random.nextInt(_browsers.length)];
  }

  static String fileFormat() {
    return _fileFormats[_random.nextInt(_fileFormats.length)];
  }

  static String versionNumber() {
    final major = _random.nextInt(10) + 1;
    final minor = _random.nextInt(10);
    final patch = _random.nextInt(10);
    return '$major.$minor.$patch';
  }

  static String ipAddressV6() {
    final parts = <String>[];
    for (var i = 0; i < 8; i++) {
      parts.add(_random.nextInt(65536).toRadixString(16).padLeft(4, '0'));
    }
    return parts.join(':');
  }

  static String macAddress() {
    final mac = <String>[];
    for (var i = 0; i < 6; i++) {
      mac.add(_random.nextInt(256).toStringAsFixed(0).padLeft(2, '0'));
    }
    return mac.join(':');
  }

  static String domainExtension() {
    final extensions = [
      '.com',
      '.org',
      '.net',
      '.io',
      '.co',
      '.dev',
      '.app',
      '.tech',
    ];
    return extensions[_random.nextInt(extensions.length)];
  }

  static String httpStatusCode() {
    final codes = [200, 201, 301, 302, 400, 401, 403, 404, 500, 502, 503];
    return codes[_random.nextInt(codes.length)].toString();
  }

  static String httpMethod() {
    final methods = [
      'GET',
      'POST',
      'PUT',
      'DELETE',
      'PATCH',
      'HEAD',
      'OPTIONS',
    ];
    return methods[_random.nextInt(methods.length)];
  }

  static String apiEndpoint() {
    final endpoints = [
      '/users',
      '/posts',
      '/comments',
      '/products',
      '/orders',
      '/auth/login',
    ];
    return endpoints[_random.nextInt(endpoints.length)];
  }

  static String softwareVersion() {
    return versionNumber();
  }

  static String fileName() {
    final names = [
      'document',
      'report',
      'presentation',
      'spreadsheet',
      'image',
      'video',
      'archive',
    ];
    final name = names[_random.nextInt(names.length)];
    final number = _random.nextInt(1000);
    final ext = fileFormat();
    return '$name$number.$ext';
  }

  static int fileSize() {
    return _random.nextInt(100000000); // 0-100MB in bytes
  }

  static String mimeType() {
    final types = {
      'PDF': 'application/pdf',
      'DOCX':
          'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
      'JPG': 'image/jpeg',
      'PNG': 'image/png',
      'MP4': 'video/mp4',
      'MP3': 'audio/mpeg',
      'JSON': 'application/json',
      'HTML': 'text/html',
    };
    final format = fileFormat();
    return types[format] ?? 'application/octet-stream';
  }

  static String gitCommitHash() {
    const chars = '0123456789abcdef';
    final buffer = StringBuffer();
    for (var i = 0; i < 40; i++) {
      buffer.write(chars[_random.nextInt(chars.length)]);
    }
    return buffer.toString();
  }

  static String dockerImage() {
    final names = [
      'nginx',
      'postgres',
      'redis',
      'node',
      'python',
      'ubuntu',
      'alpine',
    ];
    final name = names[_random.nextInt(names.length)];
    final tag = versionNumber();
    return '$name:$tag';
  }
}
