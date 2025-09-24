import 'dart:math';

class FakeAnimals {
  static final Random _random = Random();

  static const List<String> _animals = [
    'Dog', 'Cat', 'Lion', 'Tiger', 'Elephant', 'Giraffe', 'Monkey', 'Bear',
    'Wolf', 'Fox', 'Rabbit', 'Deer', 'Horse', 'Cow', 'Pig', 'Sheep',
    'Chicken', 'Duck', 'Goose', 'Turkey', 'Eagle', 'Owl', 'Hawk', 'Sparrow',
    'Shark', 'Dolphin', 'Whale', 'Fish', 'Snake', 'Lizard', 'Frog', 'Turtle'
  ];

  static const List<String> _dogBreeds = [
    'Labrador Retriever', 'German Shepherd', 'Golden Retriever', 'Bulldog', 'Poodle',
    'Beagle', 'Rottweiler', 'German Shorthaired Pointer', 'Yorkshire Terrier', 'Boxer'
  ];

  static const List<String> _catBreeds = [
    'Persian', 'Maine Coon', 'British Shorthair', 'Ragdoll', 'Siamese',
    'Abyssinian', 'Bengal', 'Sphynx', 'Russian Blue', 'Scottish Fold'
  ];

  static const List<String> _plants = [
    'Rose', 'Tulip', 'Sunflower', 'Oak Tree', 'Pine Tree', 'Maple Tree', 'Birch Tree',
    'Daisy', 'Lily', 'Orchid', 'Fern', 'Cactus', 'Bamboo', 'Palm Tree'
  ];

  static const List<String> _naturalElements = [
    'Mountain Everest', 'Amazon River', 'Pacific Ocean', 'Sahara Desert',
    'Grand Canyon', 'Niagara Falls', 'Yellowstone', 'Great Barrier Reef'
  ];

  static const List<String> _weatherConditions = [
    'Sunny', 'Cloudy', 'Partly Cloudy', 'Rainy', 'Thunderstorm', 'Snowy',
    'Foggy', 'Windy', 'Hail', 'Drizzle', 'Overcast', 'Clear'
  ];

  static String animal() {
    return _animals[_random.nextInt(_animals.length)];
  }

  static String dogBreed() {
    return _dogBreeds[_random.nextInt(_dogBreeds.length)];
  }

  static String catBreed() {
    return _catBreeds[_random.nextInt(_catBreeds.length)];
  }

  static String plant() {
    return _plants[_random.nextInt(_plants.length)];
  }

  static String flower() {
    final flowers = _plants.where((p) => !p.contains('Tree') && !p.contains('Fern') && !p.contains('Cactus') && !p.contains('Bamboo') && !p.contains('Palm')).toList();
    return flowers[_random.nextInt(flowers.length)];
  }

  static String tree() {
    final trees = _plants.where((p) => p.contains('Tree')).toList();
    return trees[_random.nextInt(trees.length)];
  }

  static String naturalElement() {
    return _naturalElements[_random.nextInt(_naturalElements.length)];
  }

  static String mountain() {
    return 'Mount ' + ['Everest', 'Kilimanjaro', 'Fuji', 'McKinley', 'Aconcagua'][_random.nextInt(5)];
  }

  static String river() {
    return ['Amazon', 'Nile', 'Yangtze', 'Mississippi', 'Danube'][_random.nextInt(5)] + ' River';
  }

  static String lake() {
    return ['Superior', 'Victoria', 'Huron', 'Michigan', 'Tanganyika'][_random.nextInt(5)] + ' Lake';
  }

  static String weatherCondition() {
    return _weatherConditions[_random.nextInt(_weatherConditions.length)];
  }

  static double temperature({bool celsius = true}) {
    final temp = 10 + _random.nextDouble() * 30; // 10-40 degrees
    return celsius ? temp : (temp * 9/5) + 32;
  }

  static int humidity() {
    return 20 + _random.nextInt(61); // 20-80%
  }

  static double windSpeed() {
    return _random.nextDouble() * 50; // 0-50 km/h or mph
  }
}