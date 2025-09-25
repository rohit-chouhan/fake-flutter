import 'dart:math';

class FakeRealEstate {
  static final Random _random = Random();

  static const List<String> _propertyTypes = [
    'Single Family Home',
    'Condo',
    'Townhouse',
    'Apartment',
    'Duplex',
    'Triplex',
    'Mobile Home',
    'Vacation Home',
    'Commercial Property',
    'Office Building',
  ];

  static const List<String> _neighborhoods = [
    'Downtown',
    'Suburb',
    'Uptown',
    'Midtown',
    'Old Town',
    'New District',
    'Riverside',
    'Mountain View',
    'Lakefront',
    'Garden District',
  ];

  static const List<String> _amenities = [
    'Pool',
    'Gym',
    'Parking',
    'Garden',
    'Balcony',
    'Fireplace',
    'Walk-in Closet',
    'Laundry Room',
    'Dishwasher',
    'Air Conditioning',
    'Heating',
    'Security System',
  ];

  static const List<String> _mortgageTypes = [
    'Fixed Rate',
    'Adjustable Rate',
    'FHA Loan',
    'VA Loan',
    'Conventional Loan',
    'Jumbo Loan',
    'Interest Only',
    'Balloon Payment',
  ];

  static const List<String> _propertyConditions = [
    'Excellent',
    'Very Good',
    'Good',
    'Fair',
    'Poor',
    'Needs Repair',
  ];

  static String propertyType() {
    return _propertyTypes[_random.nextInt(_propertyTypes.length)];
  }

  static String neighborhood() {
    return _neighborhoods[_random.nextInt(_neighborhoods.length)];
  }

  static int bedrooms() {
    return _random.nextInt(6) + 1; // 1-6 bedrooms
  }

  static double bathrooms() {
    final options = [1.0, 1.5, 2.0, 2.5, 3.0, 3.5, 4.0];
    return options[_random.nextInt(options.length)];
  }

  static int squareFootage() {
    return 500 + _random.nextInt(4500); // 500-5000 sq ft
  }

  static double price() {
    return 50000 + _random.nextDouble() * 2000000; // $50k-$2M
  }

  static int yearBuilt() {
    return 1900 + _random.nextInt(125); // 1900-2025
  }

  static String propertyCondition() {
    return _propertyConditions[_random.nextInt(_propertyConditions.length)];
  }

  static List<String> amenities({int count = 3}) {
    final shuffled = List<String>.from(_amenities)..shuffle();
    return shuffled.take(count).toList();
  }

  static double mortgageRate() {
    return 2.5 + _random.nextDouble() * 5.0; // 2.5%-7.5%
  }

  static String mortgageType() {
    return _mortgageTypes[_random.nextInt(_mortgageTypes.length)];
  }

  static int mortgageTerm() {
    final terms = [15, 20, 25, 30];
    return terms[_random.nextInt(terms.length)];
  }

  static double monthlyPayment() {
    return 500 + _random.nextDouble() * 5000; // $500-$5500
  }

  static double propertyTax() {
    return 100 + _random.nextDouble() * 1000; // $100-$1100
  }

  static double hoaFee() {
    return _random.nextDouble() * 500; // $0-$500
  }

  static double insuranceCost() {
    return 50 + _random.nextDouble() * 200; // $50-$250
  }

  static String realtorName() {
    final firstNames = [
      'Sarah',
      'Michael',
      'Jennifer',
      'David',
      'Lisa',
      'Robert',
    ];
    final lastNames = [
      'Johnson',
      'Smith',
      'Williams',
      'Brown',
      'Davis',
      'Miller',
    ];
    return '${firstNames[_random.nextInt(firstNames.length)]} ${lastNames[_random.nextInt(lastNames.length)]}';
  }

  static String listingAgent() {
    return realtorName();
  }

  static int daysOnMarket() {
    return _random.nextInt(365); // 0-365 days
  }

  static double appraisalValue() {
    return price() * (0.9 + _random.nextDouble() * 0.2); // 90%-110% of price
  }

  static String propertyId() {
    return 'PROP${_random.nextInt(1000000).toString().padLeft(6, '0')}';
  }

  static String mlsNumber() {
    return _random.nextInt(10000000).toString().padLeft(7, '0');
  }

  static Map<String, dynamic> propertyListing() {
    return {
      'id': propertyId(),
      'type': propertyType(),
      'price': price(),
      'bedrooms': bedrooms(),
      'bathrooms': bathrooms(),
      'squareFootage': squareFootage(),
      'address': '123 ${['Main', 'Oak', 'Elm', 'Pine'][_random.nextInt(4)]} St',
      'city': 'Anytown',
      'state': 'CA',
      'zipCode': '12345',
      'yearBuilt': yearBuilt(),
      'condition': propertyCondition(),
      'amenities': amenities(),
      'neighborhood': neighborhood(),
      'daysOnMarket': daysOnMarket(),
      'listingAgent': listingAgent(),
    };
  }
}
