import 'dart:math';

class FakeMedical {
  static final Random _random = Random();

  static const List<String> _diseases = [
    'Common Cold', 'Influenza', 'COVID-19', 'Diabetes', 'Hypertension', 'Asthma',
    'Arthritis', 'Depression', 'Anxiety', 'Migraine', 'Allergies', 'Bronchitis',
    'Pneumonia', 'Gastritis', 'Hepatitis', 'Dermatitis', 'Conjunctivitis', 'Otitis'
  ];

  static const List<String> _symptoms = [
    'Fever', 'Cough', 'Headache', 'Fatigue', 'Nausea', 'Dizziness', 'Chest Pain',
    'Shortness of Breath', 'Abdominal Pain', 'Joint Pain', 'Muscle Pain', 'Sore Throat',
    'Runny Nose', 'Sneezing', 'Rash', 'Itching', 'Swelling', 'Vomiting'
  ];

  static const List<String> _medications = [
    'Aspirin', 'Ibuprofen', 'Paracetamol', 'Amoxicillin', 'Metformin', 'Lisinopril',
    'Simvastatin', 'Omeprazole', 'Losartan', 'Amlodipine', 'Prednisone', 'Warfarin',
    'Insulin', 'Albuterol', 'Cetirizine', 'Loratadine', 'Diphenhydramine', 'Codeine'
  ];

  static const List<String> _specialties = [
    'Cardiology', 'Dermatology', 'Endocrinology', 'Gastroenterology', 'Hematology',
    'Infectious Diseases', 'Nephrology', 'Neurology', 'Oncology', 'Orthopedics',
    'Pediatrics', 'Psychiatry', 'Pulmonology', 'Radiology', 'Surgery', 'Urology'
  ];

  static const List<String> _bodyParts = [
    'Heart', 'Lungs', 'Liver', 'Kidneys', 'Brain', 'Stomach', 'Intestines',
    'Skin', 'Eyes', 'Ears', 'Nose', 'Throat', 'Arms', 'Legs', 'Spine', 'Joints'
  ];

  static const List<String> _medicalProcedures = [
    'Blood Test', 'X-Ray', 'MRI', 'CT Scan', 'Ultrasound', 'Endoscopy', 'Colonoscopy',
    'Biopsy', 'Surgery', 'Physical Therapy', 'Chemotherapy', 'Radiation Therapy',
    'Dialysis', 'Transfusion', 'Vaccination', 'Immunization'
  ];

  static const List<String> _medicalConditions = [
    'Acute', 'Chronic', 'Mild', 'Severe', 'Critical', 'Stable', 'Improving', 'Worsening'
  ];

  static const List<String> _bloodTypes = [
    'A+', 'A-', 'B+', 'B-', 'AB+', 'AB-', 'O+', 'O-'
  ];

  static String disease() {
    return _diseases[_random.nextInt(_diseases.length)];
  }

  static String symptom() {
    return _symptoms[_random.nextInt(_symptoms.length)];
  }

  static String medication() {
    return _medications[_random.nextInt(_medications.length)];
  }

  static String medicalSpecialty() {
    return _specialties[_random.nextInt(_specialties.length)];
  }

  static String bodyPart() {
    return _bodyParts[_random.nextInt(_bodyParts.length)];
  }

  static String medicalProcedure() {
    return _medicalProcedures[_random.nextInt(_medicalProcedures.length)];
  }

  static String medicalCondition() {
    return _medicalConditions[_random.nextInt(_medicalConditions.length)];
  }

  static String diagnosis() {
    return '${medicalCondition()} ${disease()}';
  }

  static String prescription() {
    final med = medication();
    final dosage = '${_random.nextInt(500) + 50}mg';
    final frequency = ['once daily', 'twice daily', 'three times daily', 'as needed'][_random.nextInt(4)];
    return '$med $dosage $frequency';
  }

  static String medicalRecordNumber() {
    return 'MRN${_random.nextInt(1000000).toString().padLeft(6, '0')}';
  }

  static String hospitalName() {
    final prefixes = ['General', 'Regional', 'Community', 'University', 'City', 'County'];
    final suffixes = ['Hospital', 'Medical Center', 'Health System', 'Clinic'];
    return '${prefixes[_random.nextInt(prefixes.length)]} ${suffixes[_random.nextInt(suffixes.length)]}';
  }

  static String doctorName() {
    final titles = ['Dr.', 'Dr.', 'Dr.']; // Mostly Dr.
    final firstNames = ['James', 'Mary', 'John', 'Patricia', 'Robert', 'Jennifer', 'Michael', 'Linda'];
    final lastNames = ['Smith', 'Johnson', 'Williams', 'Brown', 'Jones', 'Garcia', 'Miller', 'Davis'];
    return '${titles[_random.nextInt(titles.length)]} ${firstNames[_random.nextInt(firstNames.length)]} ${lastNames[_random.nextInt(lastNames.length)]}';
  }

  static String insuranceProvider() {
    final providers = ['Blue Cross', 'Aetna', 'United Healthcare', 'Cigna', 'Humana', 'Kaiser Permanente'];
    return providers[_random.nextInt(providers.length)];
  }

  static String insurancePolicyNumber() {
    return 'POL${_random.nextInt(10000000).toString().padLeft(8, '0')}';
  }

  static double bloodPressureSystolic() {
    return 90 + _random.nextDouble() * 80; // 90-170
  }

  static double bloodPressureDiastolic() {
    return 60 + _random.nextDouble() * 40; // 60-100
  }

  static String bloodPressure() {
    final systolic = bloodPressureSystolic().round();
    final diastolic = bloodPressureDiastolic().round();
    return '$systolic/$diastolic';
  }

  static double bodyTemperature({bool celsius = true}) {
    final temp = 36.1 + _random.nextDouble() * 4; // 36.1-40.1 Celsius
    return celsius ? temp : (temp * 9/5) + 32;
  }

  static int heartRate() {
    return 60 + _random.nextInt(80); // 60-140 bpm
  }

  static double bmi() {
    return 15 + _random.nextDouble() * 25; // 15-40
  }

  static String vaccineName() {
    final vaccines = ['COVID-19', 'Flu', 'MMR', 'DTaP', 'Polio', 'Hepatitis B', 'Varicella'];
    return vaccines[_random.nextInt(vaccines.length)];
  }

  static String bloodType() {
    return _bloodTypes[_random.nextInt(_bloodTypes.length)];
  }
}