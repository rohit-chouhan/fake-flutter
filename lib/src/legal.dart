import 'dart:math';

class FakeLegal {
  static final Random _random = Random();

  static const List<String> _contractTypes = [
    'Service Agreement',
    'Employment Contract',
    'Lease Agreement',
    'Sales Contract',
    'Partnership Agreement',
    'NDA',
    'License Agreement',
    'Vendor Agreement',
  ];

  static const List<String> _courtTypes = [
    'Supreme Court',
    'Federal Court',
    'State Court',
    'County Court',
    'Municipal Court',
  ];

  static const List<String> _caseTypes = [
    'Civil Case',
    'Criminal Case',
    'Family Law',
    'Contract Dispute',
    'Personal Injury',
    'Property Dispute',
    'Employment Law',
    'Tax Law',
  ];

  static const List<String> _lawyers = [
    'John Smith',
    'Sarah Johnson',
    'Michael Williams',
    'Jennifer Brown',
    'David Davis',
    'Lisa Miller',
    'Robert Wilson',
    'Patricia Moore',
    'James Taylor',
    'Linda Anderson',
  ];

  static const List<String> _legalDocuments = [
    'Contract',
    'Will',
    'Trust',
    'Power of Attorney',
    'Deed',
    'Mortgage',
    'Lease',
    'Patent',
    'Trademark',
    'Copyright',
    'License',
    'Agreement',
  ];

  static String contractType() {
    return _contractTypes[_random.nextInt(_contractTypes.length)];
  }

  static String courtType() {
    return _courtTypes[_random.nextInt(_courtTypes.length)];
  }

  static String caseType() {
    return _caseTypes[_random.nextInt(_caseTypes.length)];
  }

  static String lawyerName() {
    return _lawyers[_random.nextInt(_lawyers.length)];
  }

  static String legalDocument() {
    return _legalDocuments[_random.nextInt(_legalDocuments.length)];
  }

  static String caseNumber() {
    final year = 2000 + _random.nextInt(25);
    final number = _random.nextInt(10000);
    return '$year-CV-$number';
  }

  static String contractNumber() {
    return 'CONTRACT-${_random.nextInt(1000000).toString().padLeft(6, '0')}';
  }

  static String patentNumber() {
    return 'US${_random.nextInt(10000000).toString().padLeft(7, '0')}';
  }

  static String trademarkNumber() {
    return _random.nextInt(1000000).toString().padLeft(6, '0');
  }

  static double settlementAmount() {
    return _random.nextDouble() * 1000000; // $0-$1M
  }

  static String jurisdiction() {
    final states = ['California', 'New York', 'Texas', 'Florida', 'Illinois'];
    return states[_random.nextInt(states.length)];
  }

  static String legalPrecedent() {
    final cases = [
      'Smith v. Jones',
      'Johnson v. State',
      'Williams v. Corporation',
      'Brown v. City',
    ];
    return cases[_random.nextInt(cases.length)];
  }

  static String statute() {
    final codes = [
      'Civil Code §',
      'Penal Code §',
      'Family Code §',
      'Business Code §',
    ];
    final section = _random.nextInt(10000) + 1000;
    return '${codes[_random.nextInt(codes.length)]}$section';
  }

  static String courtDecision() {
    return ['Granted', 'Denied', 'Dismissed', 'Remanded', 'Affirmed'][_random
        .nextInt(5)];
  }

  static int caseDuration() {
    return _random.nextInt(730) + 30; // 30-760 days
  }

  static String legalFee() {
    return '\$${(_random.nextDouble() * 500).round()}/hour';
  }

  static String confidentialityLevel() {
    return [
      'Public',
      'Confidential',
      'Attorney-Client Privilege',
      'Sealed',
    ][_random.nextInt(4)];
  }

  static String arbitrationClause() {
    return 'Any disputes arising from this agreement shall be resolved through binding arbitration in ${jurisdiction()}.';
  }

  static String liabilityLimitation() {
    final amount = (_random.nextDouble() * 100000).round();
    return 'Liability shall not exceed \$$amount under any circumstances.';
  }

  static String terminationClause() {
    final days = _random.nextInt(90) + 30;
    return 'Either party may terminate this agreement with $days days written notice.';
  }
}
