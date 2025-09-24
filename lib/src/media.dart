import 'dart:math';

class FakeMedia {
  static final Random _random = Random();

  static const List<String> _emojis = [
    '😀', '😂', '😊', '😍', '🤔', '😎', '😢', '😡', '👍', '👎',
    '❤️', '🔥', '⭐', '🎉', '🚀', '💯', '🙌', '🤝', '👏', '🎶'
  ];

  static const List<String> _backgroundColors = [
    'red', 'blue', 'green', 'yellow', 'purple', 'orange', 'pink', 'gray'
  ];

  static String avatarUrl({int size = 150}) {
    final id = _random.nextInt(1000);
    return 'https://via.placeholder.com/${size}x$size/$id';
  }

  static String profilePictureUrl({int size = 150}) {
    return avatarUrl(size: size);
  }

  static String placeholderImageUrl({int width = 300, int height = 200}) {
    return 'https://picsum.photos/$width/$height?random=${_random.nextInt(1000)}';
  }

  static String iconUrl({int size = 64}) {
    final id = _random.nextInt(1000);
    return 'https://via.placeholder.com/${size}x$size/$id?text=Icon';
  }

  static String emoji() {
    return _emojis[_random.nextInt(_emojis.length)];
  }

  static String backgroundUrl({int width = 1920, int height = 1080}) {
    final color = _backgroundColors[_random.nextInt(_backgroundColors.length)];
    return 'https://via.placeholder.com/${width}x$height/$color';
  }

  static String logoUrl({int size = 200}) {
    final id = _random.nextInt(1000);
    return 'https://via.placeholder.com/${size}x$size/$id?text=Logo';
  }

  static String qrCodeUrl({String? data, int size = 150}) {
    final text = data ?? 'https://example.com';
    return 'https://api.qrserver.com/v1/create-qr-code/?size=${size}x$size&data=$text';
  }

  static String barcodeUrl({String? data, int width = 200, int height = 100}) {
    final text = data ?? _random.nextInt(1000000000).toString();
    return 'https://barcode.tec-it.com/barcode.ashx?data=$text&code=Code128&dpi=96';
  }
}