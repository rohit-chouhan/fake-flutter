import 'dart:math';

class FakeSports {
  static final Random _random = Random();

  static const List<String> _sports = [
    'Football',
    'Basketball',
    'Baseball',
    'Soccer',
    'Tennis',
    'Golf',
    'Hockey',
    'Volleyball',
    'Swimming',
    'Track and Field',
    'Boxing',
    'MMA',
    'Cricket',
  ];

  static const List<String> _footballTeams = [
    'New England Patriots',
    'Kansas City Chiefs',
    'Green Bay Packers',
    'Chicago Bears',
    'New York Giants',
    'Philadelphia Eagles',
    'Dallas Cowboys',
    'Washington Commanders',
  ];

  static const List<String> _basketballTeams = [
    'Los Angeles Lakers',
    'Golden State Warriors',
    'Boston Celtics',
    'Miami Heat',
    'Chicago Bulls',
    'New York Knicks',
    'Los Angeles Clippers',
    'Brooklyn Nets',
  ];

  static const List<String> _soccerTeams = [
    'Manchester United',
    'Real Madrid',
    'Barcelona',
    'Liverpool',
    'Chelsea',
    'Bayern Munich',
    'Juventus',
    'Paris Saint-Germain',
  ];

  static const List<String> _baseballTeams = [
    'New York Yankees',
    'Boston Red Sox',
    'Los Angeles Dodgers',
    'New York Mets',
    'Chicago Cubs',
    'Atlanta Braves',
    'Houston Astros',
    'Texas Rangers',
  ];

  static const List<String> _positions = [
    'Quarterback',
    'Running Back',
    'Wide Receiver',
    'Tight End',
    'Offensive Line',
    'Linebacker',
    'Defensive Back',
    'Kicker',
    'Punter',
    'Coach',
  ];

  static const List<String> _venues = [
    'Stadium',
    'Arena',
    'Field',
    'Court',
    'Track',
    'Pool',
    'Gym',
    'Coliseum',
  ];

  static String sport() {
    return _sports[_random.nextInt(_sports.length)];
  }

  static String footballTeam() {
    return _footballTeams[_random.nextInt(_footballTeams.length)];
  }

  static String basketballTeam() {
    return _basketballTeams[_random.nextInt(_basketballTeams.length)];
  }

  static String soccerTeam() {
    return _soccerTeams[_random.nextInt(_soccerTeams.length)];
  }

  static String baseballTeam() {
    return _baseballTeams[_random.nextInt(_baseballTeams.length)];
  }

  static String position() {
    return _positions[_random.nextInt(_positions.length)];
  }

  static String playerName() {
    final firstNames = [
      'John',
      'Mike',
      'David',
      'Chris',
      'James',
      'Robert',
      'Michael',
      'William',
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
    return '${firstNames[_random.nextInt(firstNames.length)]} ${lastNames[_random.nextInt(lastNames.length)]}';
  }

  static int jerseyNumber() {
    return _random.nextInt(99) + 1; // 1-99
  }

  static String score() {
    final home = _random.nextInt(50);
    final away = _random.nextInt(50);
    return '$home-$away';
  }

  static int points() {
    return _random.nextInt(150); // 0-149 points
  }

  static String gameResult() {
    return ['Win', 'Loss', 'Tie', 'Overtime Win', 'Overtime Loss'][_random
        .nextInt(5)];
  }

  static String venue() {
    final names = [
      'Memorial',
      'Community',
      'City',
      'State',
      'National',
      'Arena',
    ];
    final name = names[_random.nextInt(names.length)];
    final type = _venues[_random.nextInt(_venues.length)];
    return '$name $type';
  }

  static int attendance() {
    return 1000 + _random.nextInt(90000); // 1000-91000
  }

  static String tournament() {
    final tournaments = [
      'Championship',
      'Playoffs',
      'Super Bowl',
      'World Cup',
      'Olympics',
      'Stanley Cup',
    ];
    return tournaments[_random.nextInt(tournaments.length)];
  }

  static String season() {
    final year = 2020 + _random.nextInt(10);
    return '$year-${year + 1}';
  }

  static double playerHeight() {
    return 1.5 + _random.nextDouble() * 0.5; // 1.5-2.0 meters
  }

  static double playerWeight() {
    return 60 + _random.nextDouble() * 100; // 60-160 kg
  }

  static String injury() {
    final injuries = [
      'Sprained Ankle',
      'Broken Leg',
      'Concussion',
      'Torn ACL',
      'Strained Back',
      'Dislocated Shoulder',
    ];
    return injuries[_random.nextInt(injuries.length)];
  }

  static String statistic() {
    final stats = [
      'Points',
      'Assists',
      'Rebounds',
      'Goals',
      'Saves',
      'Hits',
      'Home Runs',
    ];
    return stats[_random.nextInt(stats.length)];
  }

  static int statisticValue() {
    return _random.nextInt(100);
  }

  static String refereeName() {
    final firstNames = ['Mike', 'John', 'Steve', 'Bob', 'Tom', 'Bill'];
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

  static String coachName() {
    return playerName(); // Same format
  }

  static String teamMascot() {
    final mascots = [
      'Eagle',
      'Lion',
      'Tiger',
      'Bear',
      'Wolf',
      'Shark',
      'Falcon',
      'Panther',
    ];
    return mascots[_random.nextInt(mascots.length)];
  }

  static String championshipTitle() {
    final titles = [
      'World Champion',
      'National Champion',
      'Division Champion',
      'Conference Champion',
    ];
    return titles[_random.nextInt(titles.length)];
  }
}
