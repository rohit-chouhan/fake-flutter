import 'dart:math';

/// A utility class for generating fake animal, plant, and nature-related data.
///
/// This class provides static methods to generate various types of animals,
/// breeds, plants, natural elements, and weather information for testing and prototyping.
class FakeAnimals {
  static final Random _random = Random();

  static const List<String> _animals = [
    'Dog',
    'Cat',
    'Lion',
    'Tiger',
    'Elephant',
    'Giraffe',
    'Monkey',
    'Bear',
    'Wolf',
    'Fox',
    'Rabbit',
    'Deer',
    'Horse',
    'Cow',
    'Pig',
    'Sheep',
    'Chicken',
    'Duck',
    'Goose',
    'Turkey',
    'Eagle',
    'Owl',
    'Hawk',
    'Sparrow',
    'Shark',
    'Dolphin',
    'Whale',
    'Fish',
    'Snake',
    'Lizard',
    'Frog',
    'Turtle',
  ];

  static const List<String> _dogBreeds = [
    'Labrador Retriever',
    'German Shepherd',
    'Golden Retriever',
    'Bulldog',
    'Poodle',
    'Beagle',
    'Rottweiler',
    'German Shorthaired Pointer',
    'Yorkshire Terrier',
    'Boxer',
  ];

  static const List<String> _catBreeds = [
    'Persian',
    'Maine Coon',
    'British Shorthair',
    'Ragdoll',
    'Siamese',
    'Abyssinian',
    'Bengal',
    'Sphynx',
    'Russian Blue',
    'Scottish Fold',
  ];

  static const List<String> _plants = [
    'Rose',
    'Tulip',
    'Sunflower',
    'Oak Tree',
    'Pine Tree',
    'Maple Tree',
    'Birch Tree',
    'Daisy',
    'Lily',
    'Orchid',
    'Fern',
    'Cactus',
    'Bamboo',
    'Palm Tree',
  ];

  static const List<String> _naturalElements = [
    'Mountain Everest',
    'Amazon River',
    'Pacific Ocean',
    'Sahara Desert',
    'Grand Canyon',
    'Niagara Falls',
    'Yellowstone',
    'Great Barrier Reef',
  ];

  static const List<String> _weatherConditions = [
    'Sunny',
    'Cloudy',
    'Partly Cloudy',
    'Rainy',
    'Thunderstorm',
    'Snowy',
    'Foggy',
    'Windy',
    'Hail',
    'Drizzle',
    'Overcast',
    'Clear',
  ];

  /// Generates a random animal name.
  ///
  /// Returns one of the predefined animal names.
  static String animal() {
    return _animals[_random.nextInt(_animals.length)];
  }

  /// Generates a random dog breed.
  ///
  /// Returns one of the predefined dog breed names.
  static String dogBreed() {
    return _dogBreeds[_random.nextInt(_dogBreeds.length)];
  }

  /// Generates a random cat breed.
  ///
  /// Returns one of the predefined cat breed names.
  static String catBreed() {
    return _catBreeds[_random.nextInt(_catBreeds.length)];
  }

  /// Generates a random plant name.
  ///
  /// Returns one of the predefined plant names.
  static String plant() {
    return _plants[_random.nextInt(_plants.length)];
  }

  /// Generates a random flower name.
  ///
  /// Returns a flower from the plant list, excluding trees and other non-flowers.
  static String flower() {
    final flowers = _plants
        .where(
          (p) =>
              !p.contains('Tree') &&
              !p.contains('Fern') &&
              !p.contains('Cactus') &&
              !p.contains('Bamboo') &&
              !p.contains('Palm'),
        )
        .toList();
    return flowers[_random.nextInt(flowers.length)];
  }

  /// Generates a random tree name.
  ///
  /// Returns a tree from the plant list.
  static String tree() {
    final trees = _plants.where((p) => p.contains('Tree')).toList();
    return trees[_random.nextInt(trees.length)];
  }

  /// Generates a random natural element.
  ///
  /// Returns one of the predefined natural elements like mountains or rivers.
  static String naturalElement() {
    return _naturalElements[_random.nextInt(_naturalElements.length)];
  }

  /// Generates a random mountain name.
  ///
  /// Returns a formatted mountain name.
  static String mountain() {
    return 'Mount ${['Everest', 'Kilimanjaro', 'Fuji', 'McKinley', 'Aconcagua'][_random.nextInt(5)]}';
  }

  /// Generates a random river name.
  ///
  /// Returns a formatted river name.
  static String river() {
    return '${['Amazon', 'Nile', 'Yangtze', 'Mississippi', 'Danube'][_random.nextInt(5)]} River';
  }

  /// Generates a random lake name.
  ///
  /// Returns a formatted lake name.
  static String lake() {
    return '${['Superior', 'Victoria', 'Huron', 'Michigan', 'Tanganyika'][_random.nextInt(5)]} Lake';
  }

  /// Generates a random weather condition.
  ///
  /// Returns one of the predefined weather conditions.
  static String weatherCondition() {
    return _weatherConditions[_random.nextInt(_weatherConditions.length)];
  }

  /// Generates a random temperature.
  ///
  /// [celsius] If true, returns in Celsius; otherwise in Fahrenheit.
  /// Returns a double between 10-40°C or equivalent Fahrenheit.
  static double temperature({bool celsius = true}) {
    final temp = 10 + _random.nextDouble() * 30; // 10-40 degrees
    return celsius ? temp : (temp * 9 / 5) + 32;
  }

  /// Generates a random humidity percentage.
  ///
  /// Returns an integer between 20 and 80.
  static int humidity() {
    return 20 + _random.nextInt(61); // 20-80%
  }

  /// Generates a random wind speed.
  ///
  /// Returns a double between 0 and 50 km/h or mph.
  static double windSpeed() {
    return _random.nextDouble() * 50; // 0-50 km/h or mph
  }
}
