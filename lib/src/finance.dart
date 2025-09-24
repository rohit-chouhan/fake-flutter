import 'dart:math';

class FakeFinance {
  static final Random _random = Random();

  static const List<String> _banks = [
    'Bank of America', 'Chase', 'Wells Fargo', 'Citibank', 'HSBC'
  ];

  static String bankName() {
    return _banks[_random.nextInt(_banks.length)];
  }

  static String iban() {
    final country = 'US';
    final checkDigits = _random.nextInt(100).toString().padLeft(2, '0');
    final part1 = _random.nextInt(100000000).toString().padLeft(8, '0');
    final part2 = _random.nextInt(100000000).toString().padLeft(8, '0');
    final bban = part1 + part2;
    return '$country$checkDigits$bban';
  }

  static String accountNumber() {
    return _random.nextInt(1000000000).toString().padLeft(10, '0');
  }

  static String creditCardNumber() {
    // Simple fake card number, not Luhn valid
    final prefix = ['4', '5', '3'][_random.nextInt(3)]; // Visa, Mastercard, Amex
    final length = prefix == '3' ? 15 : 16;
    final remaining = length - 1;
    final part1 = _random.nextInt(100000000).toString().padLeft(8, '0');
    final part2 = remaining > 8 ? _random.nextInt(100000000).toString().padLeft(remaining - 8, '0') : '';
    final number = prefix + part1 + part2;
    return number.substring(0, length);
  }

  static String cvv() {
    return _random.nextInt(1000).toString().padLeft(3, '0');
  }

  static String expiryDate() {
    final month = (_random.nextInt(12) + 1).toString().padLeft(2, '0');
    final year = (DateTime.now().year + _random.nextInt(5) + 1).toString().substring(2);
    return '$month/$year';
  }

  static String cryptocurrencyWalletAddress() {
    const chars = '0123456789abcdef';
    final address = StringBuffer('0x');
    for (var i = 0; i < 40; i++) {
      address.write(chars[_random.nextInt(chars.length)]);
    }
    return address.toString();
  }

  static String transactionId() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final id = StringBuffer();
    for (var i = 0; i < 16; i++) {
      id.write(chars[_random.nextInt(chars.length)]);
    }
    return id.toString();
  }

  static double currencyAmount({double min = 0, double max = 10000}) {
    return min + _random.nextDouble() * (max - min);
  }

  static String invoiceNumber() {
    return 'INV-${_random.nextInt(1000000).toString().padLeft(6, '0')}';
  }

  static String taxId() {
    return _random.nextInt(1000000000).toString().padLeft(9, '0');
  }

  static String password({int length = 8}) {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#\$%^&*';
    final buffer = StringBuffer();
    for (var i = 0; i < length; i++) {
      buffer.write(chars[_random.nextInt(chars.length)]);
    }
    return buffer.toString();
  }

  static String pinCode({int length = 4}) {
    final buffer = StringBuffer();
    for (var i = 0; i < length; i++) {
      buffer.write(_random.nextInt(10));
    }
    return buffer.toString();
  }
}