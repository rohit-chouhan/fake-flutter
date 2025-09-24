import 'dart:math';
import 'person.dart';
import 'company.dart';
import 'address.dart';
import 'contact.dart';
import 'medical.dart';
import 'finance.dart';
import 'datetime.dart';
import 'misc.dart';
import 'food.dart';
import 'internet.dart';
import 'business.dart';
import 'text.dart';

class FakeRelationships {
  static final Random _random = Random();
  static final Map<String, dynamic> _entityCache = {};

  /// Generate a complete person with all related data
  static Map<String, dynamic> personWithRelationships() {
    final personId = 'person_${_random.nextInt(1000000)}';

    if (_entityCache.containsKey(personId)) {
      return _entityCache[personId];
    }

    final person = {
      'id': personId,
      'name': FakePerson.fullName(),
      'age': FakePerson.age(),
      'gender': FakePerson.gender(),
      'email': FakeContact.email(),
      'phone': FakeContact.phoneNumber(),
      'address': {
        'street': FakeAddress.street(),
        'city': FakeAddress.city(),
        'state': FakeAddress.stateProvince(),
        'zipCode': FakeAddress.postalCode(),
        'country': FakeAddress.country(),
      },
      'employment': {
        'company': FakeCompany.companyName(),
        'jobTitle': FakeCompany.jobTitle(),
        'department': FakeCompany.department(),
        'salary': FakeFinance.currencyAmount(min: 30000, max: 150000),
        'startDate': FakeDateTime.pastDate(),
      },
      'medical': {
        'bloodType': FakeMedical.bloodType(),
        'insurance': FakeMedical.insuranceProvider(),
        'lastCheckup': FakeDateTime.pastDate(),
        'allergies': List.generate(_random.nextInt(3), (_) => FakeMedical.disease()),
      },
      'preferences': {
        'favoriteColor': FakeMisc.colorHex(),
        'favoriteFood': FakeFood.food(),
        'hobbies': List.generate(3, (_) => FakeMisc.noun()),
      },
    };

    _entityCache[personId] = person;
    return person;
  }

  /// Generate a company with employees and relationships
  static Map<String, dynamic> companyWithRelationships({int employeeCount = 5}) {
    final companyId = 'company_${_random.nextInt(1000000)}';

    if (_entityCache.containsKey(companyId)) {
      return _entityCache[companyId];
    }

    final employees = List.generate(employeeCount, (_) => personWithRelationships());

    final company = {
      'id': companyId,
      'name': FakeCompany.companyName(),
      'industry': FakeCompany.industry(),
      'founded': FakeDateTime.pastDate(),
      'revenue': FakeFinance.currencyAmount(min: 1000000, max: 100000000),
      'employeeCount': employeeCount,
      'address': {
        'street': FakeAddress.street(),
        'city': FakeAddress.city(),
        'state': FakeAddress.stateProvince(),
        'zipCode': FakeAddress.postalCode(),
      },
      'contact': {
        'email': FakeCompany.businessEmail(),
        'phone': FakeContact.phoneNumber(),
        'website': FakeContact.websiteUrl(),
      },
      'employees': employees,
      'departments': List.generate(4, (_) => {
        'name': FakeCompany.department(),
        'manager': employees[_random.nextInt(employees.length)]['name'],
        'employeeCount': _random.nextInt(20) + 5,
      }),
    };

    _entityCache[companyId] = company;
    return company;
  }

  /// Generate a family tree
  static Map<String, dynamic> familyTree({int generations = 3}) {
    final familyId = 'family_${_random.nextInt(1000000)}';

    Map<String, dynamic> createPerson(String role, {int ageOffset = 0}) {
      return {
        'id': '${role}_${_random.nextInt(1000000)}',
        'name': FakePerson.fullName(),
        'age': FakePerson.age() + ageOffset,
        'role': role,
        'occupation': FakeCompany.jobTitle(),
      };
    }

    final family = <String, dynamic>{
      'id': familyId,
      'surname': FakePerson.lastName(),
      'address': FakeAddress.fullAddress(),
      'members': <Map<String, dynamic>>[],
    };

    // Add family members based on generations
    if (generations >= 1) {
      family['members'].add(createPerson('Grandfather', ageOffset: 60));
      family['members'].add(createPerson('Grandmother', ageOffset: 58));
    }

    if (generations >= 2) {
      family['members'].add(createPerson('Father', ageOffset: 35));
      family['members'].add(createPerson('Mother', ageOffset: 33));
    }

    if (generations >= 3) {
      family['members'].add(createPerson('Son', ageOffset: 0));
      family['members'].add(createPerson('Daughter', ageOffset: -2));
    }

    _entityCache[familyId] = family;
    return family;
  }

  /// Generate a social network
  static Map<String, dynamic> socialNetwork({int userCount = 10}) {
    final networkId = 'network_${_random.nextInt(1000000)}';

    final users = List.generate(userCount, (_) => personWithRelationships());

    // Create connections between users
    final connections = <Map<String, dynamic>>[];
    for (var i = 0; i < users.length; i++) {
      final friendCount = _random.nextInt(5) + 1;
      for (var j = 0; j < friendCount; j++) {
        final friendIndex = (i + j + 1) % users.length;
        connections.add({
          'user1': users[i]['id'],
          'user2': users[friendIndex]['id'],
          'connectionType': ['Friend', 'Colleague', 'Family'][_random.nextInt(3)],
          'since': FakeDateTime.pastDate(),
        });
      }
    }

    final network = {
      'id': networkId,
      'name': 'Social Network ${FakeMisc.noun()}',
      'users': users,
      'connections': connections,
      'posts': List.generate(userCount * 2, (index) {
        final user = users[index % users.length];
        return {
          'id': 'post_$index',
          'author': user['id'],
          'content': FakeInternet.socialMediaPost(),
          'timestamp': FakeDateTime.pastDate(),
          'likes': FakeInternet.socialMediaLikes(),
        };
      }),
    };

    _entityCache[networkId] = network;
    return network;
  }

  /// Generate an e-commerce ecosystem
  static Map<String, dynamic> ecommerceEcosystem({
    int customerCount = 20,
    int productCount = 50,
    int orderCount = 100,
  }) {
    final ecosystemId = 'ecommerce_${_random.nextInt(1000000)}';

    final customers = List.generate(customerCount, (_) => personWithRelationships());
    final products = List.generate(productCount, (_) => {
      'id': 'product_${_random.nextInt(1000000)}',
      'name': FakeBusiness.productName(),
      'price': FakeBusiness.price(),
      'category': FakeBusiness.productCategory(),
      'sku': FakeBusiness.sku(),
      'description': FakeText.loremSentences(2),
    });

    final orders = List.generate(orderCount, (_) {
      final customer = customers[_random.nextInt(customers.length)];
      final orderProducts = List.generate(_random.nextInt(5) + 1, (_) =>
        products[_random.nextInt(products.length)]
      );

      return {
        'id': 'order_${_random.nextInt(1000000)}',
        'customer': customer['id'],
        'products': orderProducts,
        'total': orderProducts.fold(0.0, (sum, product) => sum + (product['price'] as double)),
        'status': ['Pending', 'Processing', 'Shipped', 'Delivered'][_random.nextInt(4)],
        'orderDate': FakeDateTime.pastDate(),
        'shippingAddress': customer['address'],
      };
    });

    final ecosystem = {
      'id': ecosystemId,
      'platform': FakeCompany.companyName(),
      'customers': customers,
      'products': products,
      'orders': orders,
      'analytics': {
        'totalRevenue': orders.fold(0.0, (sum, order) => sum + (order['total'] as double)),
        'totalOrders': orders.length,
        'totalCustomers': customers.length,
        'averageOrderValue': orders.fold(0.0, (sum, order) => sum + (order['total'] as double)) / orders.length,
      },
    };

    _entityCache[ecosystemId] = ecosystem;
    return ecosystem;
  }

  /// Clear relationship cache
  static void clearCache() {
    _entityCache.clear();
  }

  /// Get cache statistics
  static Map<String, int> getCacheStats() {
    return {
      'cachedEntities': _entityCache.length,
      'totalRelationships': _entityCache.values
          .where((entity) => entity is Map && entity.containsKey('employees'))
          .fold(0, (sum, company) => sum + (company['employees'] as List).length),
    };
  }
}