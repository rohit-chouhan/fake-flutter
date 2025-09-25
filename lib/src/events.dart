import 'dart:math';

class FakeEvents {
  static final Random _random = Random();

  static const List<String> _eventTypes = [
    'Conference',
    'Workshop',
    'Seminar',
    'Webinar',
    'Festival',
    'Concert',
    'Exhibition',
    'Trade Show',
    'Networking Event',
    'Charity Event',
    'Birthday Party',
    'Wedding',
    'Graduation',
    'Anniversary',
    'Holiday Celebration',
  ];

  static const List<String> _venues = [
    'Convention Center',
    'Hotel Ballroom',
    'Conference Hall',
    'Auditorium',
    'Stadium',
    'Arena',
    'Park',
    'Museum',
    'Art Gallery',
    'Restaurant',
    'Church',
  ];

  static const List<String> _organizers = [
    'Tech Corp',
    'Event Planners Inc',
    'Community Center',
    'University',
    'Non-Profit Organization',
    'Government Agency',
    'Private Company',
  ];

  static String eventType() {
    return _eventTypes[_random.nextInt(_eventTypes.length)];
  }

  static String venue() {
    return _venues[_random.nextInt(_venues.length)];
  }

  static String organizer() {
    return _organizers[_random.nextInt(_organizers.length)];
  }

  static String eventName() {
    final adjectives = [
      'Annual',
      'International',
      'National',
      'Regional',
      'Local',
    ];
    final nouns = ['Conference', 'Summit', 'Festival', 'Expo', 'Gathering'];
    return '${adjectives[_random.nextInt(adjectives.length)]} ${nouns[_random.nextInt(nouns.length)]}';
  }

  static DateTime eventDate() {
    final now = DateTime.now();
    final days = _random.nextInt(365);
    return now.add(Duration(days: days));
  }

  static int attendeeCount() {
    return 10 + _random.nextInt(990); // 10-1000
  }

  static double ticketPrice() {
    return _random.nextDouble() * 500; // $0-$500
  }

  static String eventDescription() {
    final descriptions = [
      'An exciting event featuring industry leaders and innovative ideas.',
      'Join us for an unforgettable experience with great food and entertainment.',
      'A professional development opportunity for career advancement.',
      'Celebrate with friends and family in this special occasion.',
      'Learn from experts in this educational and informative gathering.',
    ];
    return descriptions[_random.nextInt(descriptions.length)];
  }

  static List<String> speakers() {
    final count = 1 + _random.nextInt(5);
    final speakers = <String>[];
    for (var i = 0; i < count; i++) {
      speakers.add(
        '${['Dr.', 'Prof.', 'Mr.', 'Ms.'][_random.nextInt(4)]} Speaker ${i + 1}',
      );
    }
    return speakers;
  }

  static String eventStatus() {
    return [
      'Planning',
      'Registration Open',
      'Sold Out',
      'In Progress',
      'Completed',
    ][_random.nextInt(5)];
  }

  static Map<String, dynamic> eventDetails() {
    return {
      'name': eventName(),
      'type': eventType(),
      'date': eventDate(),
      'venue': venue(),
      'organizer': organizer(),
      'attendeeCount': attendeeCount(),
      'ticketPrice': ticketPrice(),
      'description': eventDescription(),
      'speakers': speakers(),
      'status': eventStatus(),
    };
  }

  static List<Map<String, dynamic>> eventSchedule({int sessions = 5}) {
    final schedule = <Map<String, dynamic>>[];
    var startTime = eventDate();

    for (var i = 0; i < sessions; i++) {
      final duration = 30 + _random.nextInt(120); // 30-150 minutes
      schedule.add({
        'title':
            'Session ${i + 1}: ${['Keynote', 'Workshop', 'Panel', 'Breakout'][_random.nextInt(4)]}',
        'startTime': startTime,
        'endTime': startTime.add(Duration(minutes: duration)),
        'speaker': speakers()[0],
        'description': 'An engaging session on important topics.',
      });
      startTime = startTime.add(
        Duration(minutes: duration + 15),
      ); // 15 min break
    }
    return schedule;
  }
}
