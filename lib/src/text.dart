import 'dart:math';

class FakeText {
  static final Random _random = Random();

  static const String _loremIpsum = '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
''';

  static const List<String> _bookNames = [
    'To Kill a Mockingbird',
    '1984',
    'Pride and Prejudice',
    'The Great Gatsby',
    'Moby Dick',
  ];

  static const List<String> _movieNames = [
    'The Shawshank Redemption',
    'The Godfather',
    'Pulp Fiction',
    'Inception',
    'The Matrix',
  ];

  static const List<String> _songNames = [
    'Bohemian Rhapsody',
    'Stairway to Heaven',
    'Hotel California',
    'Imagine',
    'Hey Jude',
  ];

  static const List<String> _quotes = [
    'The only way to do great work is to love what you do.',
    'Be yourself; everyone else is already taken.',
    'The future belongs to those who believe in the beauty of their dreams.',
  ];

  static const List<String> _jokes = [
    'Why don\'t scientists trust atoms? Because they make up everything!',
    'Why did the scarecrow win an award? Because he was outstanding in his field!',
  ];

  static const List<String> _facts = [
    'A group of flamingos is called a flamboyance.',
    'Octopuses have three hearts.',
    'Bananas are berries, but strawberries aren\'t.',
  ];

  static List<String> _loremWords = [];

  static List<String> get _words {
    if (_loremWords.isEmpty) {
      _loremWords = _loremIpsum
          .split(RegExp(r'\s+'))
          .where((w) => w.isNotEmpty)
          .toList();
    }
    return _loremWords;
  }

  static String loremWords(int count) {
    final words = <String>[];
    for (var i = 0; i < count; i++) {
      words.add(_words[_random.nextInt(_words.length)]);
    }
    return words.join(' ');
  }

  static String loremSentences(int count) {
    final sentences = <String>[];
    for (var i = 0; i < count; i++) {
      final wordCount = 5 + _random.nextInt(10);
      sentences.add('${loremWords(wordCount)}.');
    }
    return sentences.join(' ');
  }

  static String loremParagraphs(int count) {
    final paragraphs = <String>[];
    for (var i = 0; i < count; i++) {
      final sentenceCount = 3 + _random.nextInt(5);
      paragraphs.add(loremSentences(sentenceCount));
    }
    return paragraphs.join('\n\n');
  }

  static String bookName() {
    return _bookNames[_random.nextInt(_bookNames.length)];
  }

  static String movieName() {
    return _movieNames[_random.nextInt(_movieNames.length)];
  }

  static String songName() {
    return _songNames[_random.nextInt(_songNames.length)];
  }

  static String title() {
    final words = ['The', 'A', 'An'];
    final adjectives = ['Great', 'Amazing', 'Fantastic', 'Wonderful'];
    final nouns = ['Adventure', 'Journey', 'Story', 'Tale'];
    return '${words[_random.nextInt(words.length)]} ${adjectives[_random.nextInt(adjectives.length)]} ${nouns[_random.nextInt(nouns.length)]}';
  }

  static String headline() {
    return title().toUpperCase();
  }

  static String quote() {
    return _quotes[_random.nextInt(_quotes.length)];
  }

  static String joke() {
    return _jokes[_random.nextInt(_jokes.length)];
  }

  static String randomFact() {
    return _facts[_random.nextInt(_facts.length)];
  }

  static String paragraphWithMarkdown() {
    final paragraph = loremSentences(3);
    return '**${paragraph.substring(0, 10)}** *${paragraph.substring(10, 20)}* `${paragraph.substring(20, 30)}`';
  }

  static String paragraphWithHtml() {
    final paragraph = loremSentences(3);
    return '<p><strong>${paragraph.substring(0, 10)}</strong> <em>${paragraph.substring(10, 20)}</em> <code>${paragraph.substring(20, 30)}</code></p>';
  }

  static String tvShow() {
    const shows = [
      'Breaking Bad',
      'Game of Thrones',
      'The Sopranos',
      'The Wire',
      'Friends',
      'The Office',
      'Stranger Things',
      'The Mandalorian',
      'Black Mirror',
      'Westworld',
    ];
    return shows[_random.nextInt(shows.length)];
  }

  static String musicTrack() {
    const tracks = [
      'Bohemian Rhapsody',
      'Stairway to Heaven',
      'Hotel California',
      'Imagine',
      'Hey Jude',
      'Smells Like Teen Spirit',
      'Billie Jean',
      'Thriller',
      'Wonderwall',
      'Yesterday',
    ];
    return tracks[_random.nextInt(tracks.length)];
  }

  static String musicAlbum() {
    const albums = [
      'Abbey Road',
      'Dark Side of the Moon',
      'Thriller',
      'Back in Black',
      'The Wall',
      'Nevermind',
      'Rumours',
      'Led Zeppelin IV',
      'Sgt. Pepper\'s',
      'Highway 61 Revisited',
    ];
    return albums[_random.nextInt(albums.length)];
  }

  static String musicArtist() {
    const artists = [
      'The Beatles',
      'Queen',
      'Michael Jackson',
      'Pink Floyd',
      'Led Zeppelin',
      'Nirvana',
      'Fleetwood Mac',
      'Bob Dylan',
      'David Bowie',
      'Radiohead',
    ];
    return artists[_random.nextInt(artists.length)];
  }

  static String videoGame() {
    const games = [
      'The Legend of Zelda',
      'Super Mario Bros',
      'The Witcher 3',
      'Red Dead Redemption 2',
      'The Last of Us',
      'God of War',
      'Minecraft',
      'Fortnite',
      'Call of Duty',
      'FIFA',
    ];
    return games[_random.nextInt(games.length)];
  }

  static String sport() {
    const sports = [
      'Football',
      'Basketball',
      'Baseball',
      'Soccer',
      'Tennis',
      'Golf',
      'Hockey',
      'Volleyball',
    ];
    return sports[_random.nextInt(sports.length)];
  }

  static String sportsLeague() {
    const leagues = [
      'NFL',
      'NBA',
      'MLB',
      'Premier League',
      'La Liga',
      'Serie A',
      'Bundesliga',
      'NHL',
    ];
    return leagues[_random.nextInt(leagues.length)];
  }

  static String genre() {
    const genres = [
      'Rock',
      'Pop',
      'Jazz',
      'Classical',
      'Hip Hop',
      'Country',
      'Electronic',
      'Blues',
      'Action',
      'Comedy',
      'Drama',
      'Horror',
      'Sci-Fi',
      'Romance',
      'Thriller',
      'Documentary',
    ];
    return genres[_random.nextInt(genres.length)];
  }
}
