import 'dart:math';

class FakeEducation {
  static final Random _random = Random();

  static const List<String> _schoolTypes = [
    'Elementary School',
    'Middle School',
    'High School',
    'University',
    'College',
    'Technical Institute',
    'Community College',
    'Academy',
    'Institute',
  ];

  static const List<String> _subjects = [
    'Mathematics',
    'English',
    'Science',
    'History',
    'Geography',
    'Physics',
    'Chemistry',
    'Biology',
    'Computer Science',
    'Art',
    'Music',
    'Physical Education',
    'Economics',
    'Psychology',
    'Sociology',
    'Literature',
    'Foreign Language',
    'Philosophy',
  ];

  static const List<String> _degrees = [
    'Bachelor of Science',
    'Bachelor of Arts',
    'Master of Science',
    'Master of Arts',
    'Doctor of Philosophy',
    'MBA',
    'JD',
    'MD',
    'Associate Degree',
    'Certificate',
  ];

  static const List<String> _majors = [
    'Computer Science',
    'Business Administration',
    'Engineering',
    'Psychology',
    'Biology',
    'English Literature',
    'Mathematics',
    'History',
    'Chemistry',
    'Physics',
    'Economics',
    'Political Science',
    'Sociology',
    'Art',
    'Music',
    'Education',
    'Nursing',
  ];

  static const List<String> _grades = [
    'A',
    'A-',
    'B+',
    'B',
    'B-',
    'C+',
    'C',
    'C-',
    'D+',
    'D',
    'F',
  ];

  static const List<String> _universities = [
    'Harvard University',
    'Stanford University',
    'MIT',
    'University of Cambridge',
    'Oxford University',
    'University of Chicago',
    'Princeton University',
    'Yale University',
    'Columbia University',
    'University of Pennsylvania',
    'Caltech',
    'Duke University',
  ];

  static String schoolName() {
    final prefixes = [
      'Lincoln',
      'Washington',
      'Jefferson',
      'Roosevelt',
      'Kennedy',
      'Eisenhower',
    ];
    final type = _schoolTypes[_random.nextInt(_schoolTypes.length)];
    return '${prefixes[_random.nextInt(prefixes.length)]} $type';
  }

  static String universityName() {
    return _universities[_random.nextInt(_universities.length)];
  }

  static String subject() {
    return _subjects[_random.nextInt(_subjects.length)];
  }

  static String degree() {
    return _degrees[_random.nextInt(_degrees.length)];
  }

  static String major() {
    return _majors[_random.nextInt(_majors.length)];
  }

  static String grade() {
    return _grades[_random.nextInt(_grades.length)];
  }

  static double gpa() {
    return 1.0 + _random.nextDouble() * 3.0; // 1.0-4.0
  }

  static String courseName() {
    final prefixes = [
      'Introduction to',
      'Advanced',
      'Principles of',
      'Topics in',
      'Seminar on',
    ];
    final subject = FakeEducation.subject();
    return '${prefixes[_random.nextInt(prefixes.length)]} $subject';
  }

  static String courseCode() {
    final dept = [
      'CS',
      'MATH',
      'ENG',
      'SCI',
      'HIST',
      'ART',
    ][_random.nextInt(6)];
    final number = _random.nextInt(500) + 100;
    return '$dept${number.toString().padLeft(3, '0')}';
  }

  static int studentId() {
    return _random.nextInt(1000000) + 100000;
  }

  static String professorName() {
    final titles = ['Dr.', 'Prof.', 'Dr.'];
    final firstNames = [
      'James',
      'Mary',
      'John',
      'Patricia',
      'Robert',
      'Jennifer',
    ];
    final lastNames = [
      'Smith',
      'Johnson',
      'Williams',
      'Brown',
      'Jones',
      'Garcia',
    ];
    return '${titles[_random.nextInt(titles.length)]} ${firstNames[_random.nextInt(firstNames.length)]} ${lastNames[_random.nextInt(lastNames.length)]}';
  }

  static String department() {
    final depts = [
      'Computer Science',
      'Mathematics',
      'English',
      'Biology',
      'Chemistry',
      'Physics',
      'History',
      'Psychology',
      'Business',
      'Engineering',
      'Art',
      'Music',
    ];
    return depts[_random.nextInt(depts.length)];
  }

  static int graduationYear() {
    return 1950 + _random.nextInt(75); // 1950-2025
  }

  static String academicYear() {
    final year = 2020 + _random.nextInt(10);
    return '$year-${year + 1}';
  }

  static String semester() {
    return ['Fall', 'Spring', 'Summer', 'Winter'][_random.nextInt(4)];
  }

  static int classSize() {
    return 10 + _random.nextInt(40); // 10-50 students
  }

  static String textbookTitle() {
    final subjects = [
      'Programming',
      'Mathematics',
      'Literature',
      'Science',
      'History',
    ];
    final types = [
      'Fundamentals',
      'Introduction',
      'Advanced Topics',
      'Principles',
      'Applications',
    ];
    return '${types[_random.nextInt(types.length)]} of ${subjects[_random.nextInt(subjects.length)]}';
  }

  static String researchTopic() {
    final topics = [
      'Machine Learning',
      'Climate Change',
      'Quantum Physics',
      'Neuroscience',
      'Economic Theory',
      'Social Psychology',
      'Genetic Engineering',
      'Renewable Energy',
    ];
    return topics[_random.nextInt(topics.length)];
  }
}
