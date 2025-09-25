import 'dart:math';

/// A utility class for generating fake medical and health-related data.
///
/// This class provides static methods to generate diseases, symptoms, medications,
/// medical procedures, and other healthcare information for testing and prototyping.
class FakeMedical {
  static final Random _random = Random();

  static const List<String> _diseases = [
    'Common Cold',
    'Influenza',
    'COVID-19',
    'Diabetes',
    'Hypertension',
    'Asthma',
    'Arthritis',
    'Depression',
    'Anxiety',
    'Migraine',
    'Allergies',
    'Bronchitis',
    'Pneumonia',
    'Gastritis',
    'Hepatitis',
    'Dermatitis',
    'Conjunctivitis',
    'Otitis',
  ];

  static const List<String> _symptoms = [
    'Fever',
    'Cough',
    'Headache',
    'Fatigue',
    'Nausea',
    'Dizziness',
    'Chest Pain',
    'Shortness of Breath',
    'Abdominal Pain',
    'Joint Pain',
    'Muscle Pain',
    'Sore Throat',
    'Runny Nose',
    'Sneezing',
    'Rash',
    'Itching',
    'Swelling',
    'Vomiting',
  ];

  static const List<String> _medications = [
    'Aspirin',
    'Ibuprofen',
    'Paracetamol',
    'Amoxicillin',
    'Metformin',
    'Lisinopril',
    'Simvastatin',
    'Omeprazole',
    'Losartan',
    'Amlodipine',
    'Prednisone',
    'Warfarin',
    'Insulin',
    'Albuterol',
    'Cetirizine',
    'Loratadine',
    'Diphenhydramine',
    'Codeine',
  ];

  static const List<String> _specialties = [
    'Cardiology',
    'Dermatology',
    'Endocrinology',
    'Gastroenterology',
    'Hematology',
    'Infectious Diseases',
    'Nephrology',
    'Neurology',
    'Oncology',
    'Orthopedics',
    'Pediatrics',
    'Psychiatry',
    'Pulmonology',
    'Radiology',
    'Surgery',
    'Urology',
  ];

  static const List<String> _bodyParts = [
    'Heart',
    'Lungs',
    'Liver',
    'Kidneys',
    'Brain',
    'Stomach',
    'Intestines',
    'Skin',
    'Eyes',
    'Ears',
    'Nose',
    'Throat',
    'Arms',
    'Legs',
    'Spine',
    'Joints',
  ];

  static const List<String> _medicalProcedures = [
    'Blood Test',
    'X-Ray',
    'MRI',
    'CT Scan',
    'Ultrasound',
    'Endoscopy',
    'Colonoscopy',
    'Biopsy',
    'Surgery',
    'Physical Therapy',
    'Chemotherapy',
    'Radiation Therapy',
    'Dialysis',
    'Transfusion',
    'Vaccination',
    'Immunization',
  ];

  static const List<String> _medicalConditions = [
    'Acute',
    'Chronic',
    'Mild',
    'Severe',
    'Critical',
    'Stable',
    'Improving',
    'Worsening',
  ];

  static const List<String> _bloodTypes = [
    'A+',
    'A-',
    'B+',
    'B-',
    'AB+',
    'AB-',
    'O+',
    'O-',
  ];

  /// Generates a random disease name.
  ///
  /// Returns one of the predefined disease names.
  static String disease() {
    return _diseases[_random.nextInt(_diseases.length)];
  }

  /// Generates a random symptom.
  ///
  /// Returns one of the predefined symptom names.
  static String symptom() {
    return _symptoms[_random.nextInt(_symptoms.length)];
  }

  /// Generates a random medication name.
  ///
  /// Returns one of the predefined medication names.
  static String medication() {
    return _medications[_random.nextInt(_medications.length)];
  }

  /// Generates a random medical specialty.
  ///
  /// Returns one of the predefined medical specialty names.
  static String medicalSpecialty() {
    return _specialties[_random.nextInt(_specialties.length)];
  }

  /// Generates a random body part.
  ///
  /// Returns one of the predefined body part names.
  static String bodyPart() {
    return _bodyParts[_random.nextInt(_bodyParts.length)];
  }

  /// Generates a random medical procedure.
  ///
  /// Returns one of the predefined medical procedure names.
  static String medicalProcedure() {
    return _medicalProcedures[_random.nextInt(_medicalProcedures.length)];
  }

  /// Generates a random medical condition severity.
  ///
  /// Returns one of the predefined condition severities.
  static String medicalCondition() {
    return _medicalConditions[_random.nextInt(_medicalConditions.length)];
  }

  /// Generates a random diagnosis.
  ///
  /// Returns a combination of condition and disease.
  static String diagnosis() {
    return '${medicalCondition()} ${disease()}';
  }

  /// Generates a random prescription.
  ///
  /// Returns a formatted prescription string with medication, dosage, and frequency.
  static String prescription() {
    final med = medication();
    final dosage = '${_random.nextInt(500) + 50}mg';
    final frequency = [
      'once daily',
      'twice daily',
      'three times daily',
      'as needed',
    ][_random.nextInt(4)];
    return '$med $dosage $frequency';
  }

  /// Generates a random medical record number.
  ///
  /// Returns a formatted MRN string.
  static String medicalRecordNumber() {
    return 'MRN${_random.nextInt(1000000).toString().padLeft(6, '0')}';
  }

  /// Generates a random hospital name.
  ///
  /// Returns a formatted hospital name with prefix and suffix.
  static String hospitalName() {
    final prefixes = [
      'General',
      'Regional',
      'Community',
      'University',
      'City',
      'County',
    ];
    final suffixes = ['Hospital', 'Medical Center', 'Health System', 'Clinic'];
    return '${prefixes[_random.nextInt(prefixes.length)]} ${suffixes[_random.nextInt(suffixes.length)]}';
  }

  /// Generates a random doctor name.
  ///
  /// Returns a formatted doctor name with title, first, and last name.
  static String doctorName() {
    final titles = ['Dr.', 'Dr.', 'Dr.']; // Mostly Dr.
    final firstNames = [
      'James',
      'Mary',
      'John',
      'Patricia',
      'Robert',
      'Jennifer',
      'Michael',
      'Linda',
    ];
    final lastNames = [
      'Smith',
      'Johnson',
      'Williams',
      'Brown',
      'Jones',
      'Garcia',
      'Miller',
      'Davis',
    ];
    return '${titles[_random.nextInt(titles.length)]} ${firstNames[_random.nextInt(firstNames.length)]} ${lastNames[_random.nextInt(lastNames.length)]}';
  }

  /// Generates a random insurance provider name.
  ///
  /// Returns one of the predefined insurance provider names.
  static String insuranceProvider() {
    final providers = [
      'Blue Cross',
      'Aetna',
      'United Healthcare',
      'Cigna',
      'Humana',
      'Kaiser Permanente',
    ];
    return providers[_random.nextInt(providers.length)];
  }

  /// Generates a random insurance policy number.
  ///
  /// Returns a formatted policy number string.
  static String insurancePolicyNumber() {
    return 'POL${_random.nextInt(10000000).toString().padLeft(8, '0')}';
  }

  /// Generates a random systolic blood pressure value.
  ///
  /// Returns a double between 90 and 170 mmHg.
  static double bloodPressureSystolic() {
    return 90 + _random.nextDouble() * 80; // 90-170
  }

  /// Generates a random diastolic blood pressure value.
  ///
  /// Returns a double between 60 and 100 mmHg.
  static double bloodPressureDiastolic() {
    return 60 + _random.nextDouble() * 40; // 60-100
  }

  /// Generates a random blood pressure reading.
  ///
  /// Returns a formatted string like "120/80".
  static String bloodPressure() {
    final systolic = bloodPressureSystolic().round();
    final diastolic = bloodPressureDiastolic().round();
    return '$systolic/$diastolic';
  }

  /// Generates a random body temperature.
  ///
  /// [celsius] If true, returns in Celsius; otherwise in Fahrenheit.
  /// Returns a double between 36.1-40.1°C or equivalent Fahrenheit.
  static double bodyTemperature({bool celsius = true}) {
    final temp = 36.1 + _random.nextDouble() * 4; // 36.1-40.1 Celsius
    return celsius ? temp : (temp * 9 / 5) + 32;
  }

  /// Generates a random heart rate.
  ///
  /// Returns an integer between 60 and 140 bpm.
  static int heartRate() {
    return 60 + _random.nextInt(80); // 60-140 bpm
  }

  /// Generates a random BMI value.
  ///
  /// Returns a double between 15 and 40.
  static double bmi() {
    return 15 + _random.nextDouble() * 25; // 15-40
  }

  /// Generates a random vaccine name.
  ///
  /// Returns one of the predefined vaccine names.
  static String vaccineName() {
    final vaccines = [
      'COVID-19',
      'Flu',
      'MMR',
      'DTaP',
      'Polio',
      'Hepatitis B',
      'Varicella',
    ];
    return vaccines[_random.nextInt(vaccines.length)];
  }

  /// Generates a random blood type.
  ///
  /// Returns one of the predefined blood types (A+, A-, etc.).
  static String bloodType() {
    return _bloodTypes[_random.nextInt(_bloodTypes.length)];
  }
}
