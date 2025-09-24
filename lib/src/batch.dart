import 'dart:math';
import 'person.dart';
import 'address.dart';
import 'company.dart';
import 'contact.dart';

class FakeBatch {
  static final Random _random = Random();

  /// Generate multiple fake people at once
  static List<Map<String, dynamic>> people(int count) {
    return List.generate(count, (_) => {
      'name': FakePerson.fullName(),
      'age': FakePerson.age(),
      'email': FakeContact.email(),
      'phone': FakeContact.phoneNumber(),
      'address': FakeAddress.fullAddress(),
    });
  }

  /// Generate multiple fake companies at once
  static List<Map<String, dynamic>> companies(int count) {
    return List.generate(count, (_) => {
      'name': FakeCompany.companyName(),
      'industry': FakeCompany.industry(),
      'email': FakeCompany.businessEmail(),
      'phone': FakeContact.phoneNumber(),
      'address': FakeAddress.fullAddress(),
    });
  }

  /// Generate multiple fake products at once
  static List<Map<String, dynamic>> products(int count) {
    return List.generate(count, (_) => {
      'name': 'Product ${_random.nextInt(1000)}',
      'price': (_random.nextDouble() * 1000).roundToDouble(),
      'category': ['Electronics', 'Clothing', 'Books', 'Home'][_random.nextInt(4)],
      'sku': 'SKU${_random.nextInt(1000000).toString().padLeft(6, '0')}',
    });
  }

  /// Generate multiple fake orders at once
  static List<Map<String, dynamic>> orders(int count) {
    return List.generate(count, (_) => {
      'orderId': 'ORD-${_random.nextInt(1000000).toString().padLeft(6, '0')}',
      'customerName': FakePerson.fullName(),
      'total': (_random.nextDouble() * 5000).roundToDouble(),
      'status': ['Pending', 'Processing', 'Shipped', 'Delivered'][_random.nextInt(4)],
      'date': DateTime.now().subtract(Duration(days: _random.nextInt(365))),
    });
  }

  /// Generate a complete fake dataset
  static Map<String, dynamic> dataset({
    int users = 10,
    int companyCount = 5,
    int productCount = 20,
    int orderCount = 50,
  }) {
    return {
      'users': people(users),
      'companies': companies(companyCount),
      'products': products(productCount),
      'orders': orders(orderCount),
      'generatedAt': DateTime.now(),
    };
  }

  /// Generate fake API response data
  static Map<String, dynamic> apiResponse({
    required String endpoint,
    int statusCode = 200,
    bool success = true,
  }) {
    return {
      'status': statusCode,
      'success': success,
      'data': success ? {'message': 'Success', 'timestamp': DateTime.now()} : {'error': 'Something went wrong'},
      'endpoint': endpoint,
    };
  }

  /// Generate fake database records
  static List<Map<String, dynamic>> databaseRecords(String tableName, int count, List<String> columns) {
    return List.generate(count, (_) {
      final record = <String, dynamic>{};
      for (final column in columns) {
        switch (column.toLowerCase()) {
          case 'id':
            record[column] = _random.nextInt(1000000);
            break;
          case 'name':
          case 'title':
            record[column] = FakePerson.fullName();
            break;
          case 'email':
            record[column] = FakeContact.email();
            break;
          case 'phone':
            record[column] = FakeContact.phoneNumber();
            break;
          case 'address':
            record[column] = FakeAddress.fullAddress();
            break;
          case 'price':
          case 'amount':
            record[column] = (_random.nextDouble() * 1000).roundToDouble();
            break;
          case 'date':
          case 'created_at':
            record[column] = DateTime.now().subtract(Duration(days: _random.nextInt(365)));
            break;
          case 'active':
          case 'enabled':
            record[column] = _random.nextBool();
            break;
          default:
            record[column] = 'Value ${_random.nextInt(100)}';
        }
      }
      return record;
    });
  }
}