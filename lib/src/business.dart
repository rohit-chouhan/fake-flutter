import 'dart:math';

class FakeBusiness {
  static final Random _random = Random();

  static const List<String> _productCategories = [
    'Electronics', 'Clothing', 'Books', 'Home & Garden', 'Sports', 'Beauty',
    'Automotive', 'Toys', 'Food', 'Health', 'Office Supplies', 'Pet Supplies'
  ];

  static const List<String> _productNames = [
    'Wireless Headphones', 'Smart Watch', 'Laptop', 'Tablet', 'Smartphone',
    'Running Shoes', 'Coffee Maker', 'Blender', 'Bookshelf', 'Office Chair',
    'Yoga Mat', 'Dumbbells', 'Skincare Cream', 'Perfume', 'Board Game'
  ];

  static const List<String> _companies = [
    'TechCorp', 'Global Solutions', 'Innovate Inc', 'Prime Industries', 'NextGen',
    'Future Systems', 'Advanced Technologies', 'Smart Solutions', 'Digital Dynamics'
  ];

  static const List<String> _departments = [
    'Sales', 'Marketing', 'Engineering', 'Human Resources', 'Finance', 'Operations',
    'Customer Service', 'Research & Development', 'Quality Assurance', 'Legal'
  ];

  static const List<String> _jobTitles = [
    'Software Engineer', 'Product Manager', 'Data Analyst', 'Designer', 'Consultant',
    'Account Manager', 'Project Manager', 'Business Analyst', 'Marketing Specialist'
  ];

  static String productCategory() {
    return _productCategories[_random.nextInt(_productCategories.length)];
  }

  static String productName() {
    return _productNames[_random.nextInt(_productNames.length)];
  }

  static String companyName() {
    return _companies[_random.nextInt(_companies.length)];
  }

  static String department() {
    return _departments[_random.nextInt(_departments.length)];
  }

  static String jobTitle() {
    return _jobTitles[_random.nextInt(_jobTitles.length)];
  }

  static String sku() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final buffer = StringBuffer();
    for (var i = 0; i < 8; i++) {
      buffer.write(chars[_random.nextInt(chars.length)]);
    }
    return buffer.toString();
  }

  static double price() {
    return (_random.nextDouble() * 1000).roundToDouble(); // $0-1000
  }

  static int quantity() {
    return _random.nextInt(1000) + 1; // 1-1000
  }

  static String barcode() {
    return _random.nextInt(1000000000000).toString().padLeft(12, '0');
  }

  static String upc() {
    return _random.nextInt(10000000000).toString().padLeft(10, '0');
  }

  static String orderNumber() {
    return 'ORD-${_random.nextInt(1000000).toString().padLeft(6, '0')}';
  }

  static String invoiceNumber() {
    return 'INV-${_random.nextInt(1000000).toString().padLeft(6, '0')}';
  }

  static String transactionId() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final buffer = StringBuffer();
    for (var i = 0; i < 16; i++) {
      buffer.write(chars[_random.nextInt(chars.length)]);
    }
    return buffer.toString();
  }

  static String customerId() {
    return 'CUST-${_random.nextInt(1000000).toString().padLeft(6, '0')}';
  }

  static String supplierId() {
    return 'SUPP-${_random.nextInt(1000000).toString().padLeft(6, '0')}';
  }

  static double discount() {
    return (_random.nextDouble() * 50).roundToDouble(); // 0-50%
  }

  static double taxRate() {
    final rates = [0.0, 0.05, 0.08, 0.10, 0.12, 0.15];
    return rates[_random.nextInt(rates.length)];
  }

  static String paymentMethod() {
    return ['Credit Card', 'Debit Card', 'PayPal', 'Bank Transfer', 'Cash', 'Check'][_random.nextInt(6)];
  }

  static String shippingMethod() {
    return ['Standard Shipping', 'Express Shipping', 'Overnight', 'Two-Day', 'Free Shipping'][_random.nextInt(5)];
  }

  static int orderStatus() {
    return ['Pending', 'Processing', 'Shipped', 'Delivered', 'Cancelled'][_random.nextInt(5)] as int? ?? 0;
  }

  static String returnReason() {
    return ['Defective', 'Wrong Item', 'Not as Described', 'Changed Mind', 'Late Delivery'][_random.nextInt(5)];
  }

  static String warrantyPeriod() {
    return ['1 Year', '2 Years', '3 Years', '5 Years', 'Lifetime'][_random.nextInt(5)];
  }

  static String contractType() {
    return ['Service Agreement', 'License Agreement', 'NDA', 'Partnership Agreement', 'Employment Contract'][_random.nextInt(5)];
  }

  static String businessType() {
    return ['Corporation', 'LLC', 'Partnership', 'Sole Proprietorship', 'Non-Profit'][_random.nextInt(5)];
  }

  static String industry() {
    return ['Technology', 'Healthcare', 'Finance', 'Retail', 'Manufacturing', 'Education', 'Entertainment'][_random.nextInt(7)];
  }

  static int employeeCount() {
    return 1 + _random.nextInt(10000); // 1-10000
  }

  static double revenue() {
    return _random.nextDouble() * 1000000000; // $0-1B
  }

  static String stockSymbol() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    final buffer = StringBuffer();
    for (var i = 0; i < 3; i++) {
      buffer.write(chars[_random.nextInt(chars.length)]);
    }
    return buffer.toString();
  }

  static double stockPrice() {
    return 1 + _random.nextDouble() * 999; // $1-1000
  }
}