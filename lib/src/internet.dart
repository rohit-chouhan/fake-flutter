import 'dart:math';

class FakeInternet {
  static final Random _random = Random();

  static const List<String> _domains = [
    'example.com', 'test.org', 'fake.net', 'demo.io'
  ];

  static const List<String> _userAgents = [
    'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36',
    'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36',
    'Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.1 Mobile/15E148 Safari/604.1'
  ];

  static const List<String> _fileExtensions = [
    '.txt', '.jpg', '.pdf', '.docx', '.mp4'
  ];

  static const List<String> _socialPlatforms = [
    'twitter', 'facebook', 'instagram', 'linkedin', 'github'
  ];

  static String ipAddress() {
    return '${_random.nextInt(256)}.${_random.nextInt(256)}.${_random.nextInt(256)}.${_random.nextInt(256)}';
  }

  static String macAddress() {
    final mac = <String>[];
    for (var i = 0; i < 6; i++) {
      mac.add(_random.nextInt(256).toStringAsFixed(0).padLeft(2, '0'));
    }
    return mac.join(':');
  }

  static String url() {
    final domain = _domains[_random.nextInt(_domains.length)];
    final path = '/path${_random.nextInt(100)}';
    return 'https://www.$domain$path';
  }

  static String domain() {
    return _domains[_random.nextInt(_domains.length)];
  }

  static String filePath() {
    final dirs = ['home', 'user', 'documents', 'downloads'];
    final dir = dirs[_random.nextInt(dirs.length)];
    final file = 'file${_random.nextInt(1000)}';
    final ext = _fileExtensions[_random.nextInt(_fileExtensions.length)];
    return '/$dir/$file$ext';
  }

  static String userAgent() {
    return _userAgents[_random.nextInt(_userAgents.length)];
  }

  static Map<String, String> httpHeaders() {
    return {
      'User-Agent': userAgent(),
      'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8',
      'Accept-Language': 'en-US,en;q=0.5',
      'Accept-Encoding': 'gzip, deflate',
      'Connection': 'keep-alive'
    };
  }

  static String apiToken() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    final token = StringBuffer();
    for (var i = 0; i < 32; i++) {
      token.write(chars[_random.nextInt(chars.length)]);
    }
    return 'Bearer ${token.toString()}';
  }

  static String apiKey() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    final key = StringBuffer();
    for (var i = 0; i < 40; i++) {
      key.write(chars[_random.nextInt(chars.length)]);
    }
    return key.toString();
  }

  static String socialMediaProfileUrl({String? platform}) {
    final plat = platform ?? _socialPlatforms[_random.nextInt(_socialPlatforms.length)];
    final username = 'user${_random.nextInt(10000)}';
    return 'https://www.$plat.com/$username';
  }

  static String socialMediaPost() {
    final posts = [
      'Just had an amazing day! ☀️ #blessed',
      'Check out this new recipe I tried 🍝',
      'Beautiful sunset today 🌅',
      'Working on something exciting! 🚀',
      'Coffee and coding ☕💻'
    ];
    return posts[_random.nextInt(posts.length)];
  }

  static int socialMediaFollowers() {
    return _random.nextInt(1000000); // 0-1M followers
  }

  static int socialMediaLikes() {
    return _random.nextInt(100000); // 0-100k likes
  }

  static String hashtag() {
    final tags = ['#love', '#instagood', '#photooftheday', '#beautiful', '#happy', '#cute', '#tbt', '#instadaily'];
    return tags[_random.nextInt(tags.length)];
  }

  static String trendingTopic() {
    final topics = ['#BreakingNews', '#Trending', '#Viral', '#HotTopic', '#Discussion'];
    return topics[_random.nextInt(topics.length)];
  }

  static String username() {
    const chars = 'abcdefghijklmnopqrstuvwxyz0123456789_';
    final length = 5 + _random.nextInt(11); // 5-15 chars
    final buffer = StringBuffer();
    for (var i = 0; i < length; i++) {
      buffer.write(chars[_random.nextInt(chars.length)]);
    }
    return buffer.toString();
  }

  static String domainName() {
    final words = ['tech', 'web', 'online', 'digital', 'global', 'net', 'hub', 'zone'];
    final tlds = ['.com', '.org', '.net', '.io', '.co'];
    return '${words[_random.nextInt(words.length)]}${_random.nextInt(100)}${tlds[_random.nextInt(tlds.length)]}';
  }
}