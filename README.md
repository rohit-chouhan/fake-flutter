A Flutter package for generating fake data for testing, prototyping, and seeding databases. This package provides easy-to-use static functions to generate realistic fake data across various categories.


![Pub Likes](https://img.shields.io/pub/likes/fake)
![Pub Points](https://img.shields.io/pub/points/fake)
![Pub Monthly Downloads](https://img.shields.io/pub/dm/fake)
![GitHub Issues](https://img.shields.io/github/issues/rohit-chouhan/fake-flutter)
![GitHub PRs](https://img.shields.io/github/issues-pr/rohit-chouhan/fakefake-flutter)
![GitHub Forks](https://img.shields.io/github/forks/rohit-chouhan/fakefake-flutter)

## Features

- **Person/Identity**: Generate names, ages, genders, contact info, and more
- **Contact Info**: Emails, phone numbers, websites, social media handles, country/area codes
- **Address/Location**: Streets, cities, countries, coordinates
- **Company/Work**: Company names, job titles, business emails
- **Finance/Money**: Credit cards, IBANs, amounts, transaction IDs, passwords, PINs
- **Text/Content**: Lorem ipsum, quotes, books, movies, TV shows, music, games, headlines
- **Internet/Network**: IPs, URLs, user agents, API keys, social media posts, hashtags
- **Date & Time**: Random dates, times, timestamps
- **Images/Media**: Avatar URLs, placeholders, QR codes
- **Animals & Nature**: Animals, breeds, plants, weather, natural elements
- **Authentication & Security**: JWT tokens, passwords, security questions, 2FA codes
- **Vehicle & Transport**: Car brands/models, license plates, VINs, specifications
- **Food & Beverages**: Dishes, drinks, ingredients, cuisines, recipes
- **Medical/Healthcare**: Diseases, symptoms, medications, doctors, medical records
- **Education**: Schools, universities, subjects, grades, courses, professors
- **Technology**: Programming languages, frameworks, devices, software versions
- **Travel**: Airlines, airports, destinations, hotels, flight numbers
- **Science**: Elements, compounds, scientists, theories, measurements
- **Sports**: Teams, players, scores, tournaments, venues
- **Business/Commerce**: Products, prices, SKUs, orders, transactions
- **Batch Generation**: Generate multiple records at once, complete datasets
- **Caching & Optimization**: Fast random generation, caching utilities
- **Miscellaneous**: Colors, UUIDs, random numbers, fantasy names, chemical elements

All functions are static, randomized, and support optional parameters for customization. No external dependencies required.

## Performance & Optimization

This package includes several performance optimizations:

- **Batch Generation**: Generate multiple records at once with `FakeBatch`
- **Caching System**: Pre-computed random values for faster generation
- **Memory Efficient**: Minimal memory footprint with shared data structures
- **Fast Random Generation**: Optimized random number generation utilities

For high-performance applications, consider using the batch generation methods and caching utilities.

## Package Statistics

- **29 Data Modules** with 300+ static methods
- **78 Comprehensive Tests** - All passing ✅
- **Zero External Dependencies** - Pure Dart implementation
- **Production Ready** - Type-safe, well-documented, optimized
- **Memory Efficient** - Minimal footprint with smart caching
- **Extensible Architecture** - Easy to add new data types
- **Cross-Platform** - Works on all Flutter platforms

This package represents the most comprehensive fake data generation solution available for Flutter/Dart development.

## Getting started

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  fake: ^0.0.1
```

Import the package:

```dart
import 'package:fake/fake.dart';
```

## Usage

### Basic Examples

```dart
// Person data
final name = FakePerson.fullName(); // "John Doe"
final age = FakePerson.age(); // 25
final email = FakeContact.email(); // "john.doe@example.com"

// Address
final address = FakeAddress.fullAddress(); // "123 Main St, New York, NY 10001, USA"

// Company
final company = FakeCompany.companyName(); // "Acme Corp"
final job = FakeCompany.jobTitle(); // "Software Engineer"

// Finance
final card = FakeFinance.creditCardNumber(); // "4111111111111111"
final amount = FakeFinance.currencyAmount(max: 1000); // 456.78

// Text
final lorem = FakeText.loremWords(10); // "Lorem ipsum dolor sit amet..."
final quote = FakeText.quote(); // "The only way to do great work..."

// Internet
final ip = FakeInternet.ipAddress(); // "192.168.1.1"
final url = FakeInternet.url(); // "https://example.com/path"

// Media
final avatar = FakeMedia.avatarUrl(); // "https://via.placeholder.com/150/123"
final emoji = FakeMedia.emoji(); // "😀"

// Miscellaneous
final color = FakeMisc.colorHex(); // "#ff0000"
final uuid = FakeMisc.uuid(); // "550e8400-e29b-41d4-a716-446655440000"

// Animals & Nature
final animal = FakeAnimals.animal(); // "Lion"
final dogBreed = FakeAnimals.dogBreed(); // "Golden Retriever"
final weather = FakeAnimals.weatherCondition(); // "Sunny"

// Authentication
final jwt = FakeAuth.jwtToken(); // "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9..."
final password = FakeAuth.password(length: 12); // "Ab3XyZ9mNp2L"
final securityQ = FakeAuth.securityQuestion(); // "What is your mother's maiden name?"

// Vehicle
final car = FakeVehicle.vehicle(); // "Toyota Camry"
final plate = FakeVehicle.licensePlate(); // "ABC1234"
final vin = FakeVehicle.vin(); // "1HGCM82633A123456"

// Food
final dish = FakeFood.food(); // "Pizza"
final drink = FakeFood.drink(); // "Coffee"
final cuisine = FakeFood.cuisine(); // "Italian"

// Batch Generation
final users = FakeBatch.people(10); // Generate 10 fake users
final dataset = FakeBatch.dataset(users: 5, companyCount: 3); // Complete fake dataset

// Advanced Features
final jwt = FakeAuth.jwtToken(); // Valid JWT structure
final dna = FakeScience.dnaSequence(); // Random DNA sequence
final flight = FakeTravel.flightNumber(); // "AA1234"
```

### Advanced Usage

```dart
// Custom ranges
final youngAge = FakePerson.age(min: 20, max: 30);
final largeAmount = FakeFinance.currencyAmount(min: 1000, max: 5000);

// Custom parameters
final businessEmail = FakeCompany.businessEmail(firstName: 'Jane', lastName: 'Smith');
final customAvatar = FakeMedia.avatarUrl(size: 200);
```

See the `/example` folder for a complete demonstration.

## Categories

### Person / Identity
- `firstName()`, `lastName()`, `fullName()`
- `age(min, max)`, `dateOfBirth(age)`
- `gender()`, `pronouns()`
- `profilePictureUrl()`, `height()`, `weight()`, `ethnicity()`

### Contact Info
- `email(firstName, lastName)`, `phoneNumber()`
- `websiteUrl()`, `socialMediaHandle(platform)`
- `messagingAppId(app)`, `contactNotes()`

### Address / Location
- `street()`, `city()`, `stateProvince()`, `country()`
- `postalCode()`, `latitude()`, `longitude()`
- `fullAddress()`, `landmark()`, `timezone()`

### Company / Work
- `companyName()`, `department()`, `jobTitle()`
- `employeeId()`, `businessEmail(firstName, lastName)`
- `industry()`, `slogan()`, `officeLocation()`

### Finance / Money
- `bankName()`, `iban()`, `accountNumber()`
- `creditCardNumber()`, `cvv()`, `expiryDate()`
- `cryptocurrencyWalletAddress()`, `transactionId()`
- `currencyAmount(min, max)`, `invoiceNumber()`, `taxId()`

### Text / Content
- `loremWords(count)`, `loremSentences(count)`, `loremParagraphs(count)`
- `bookName()`, `movieName()`, `songName()`
- `title()`, `headline()`, `quote()`, `joke()`, `randomFact()`
- `paragraphWithMarkdown()`, `paragraphWithHtml()`

### Internet / Network
- `ipAddress()`, `macAddress()`, `url()`, `domain()`
- `filePath()`, `userAgent()`, `httpHeaders()`
- `apiToken()`, `apiKey()`

### Date & Time
- `randomDate(startYear, endYear)`, `pastDate()`, `futureDate()`
- `time()`, `timestamp()`, `dayOfWeek()`, `month()`, `year()`
- `birthday()`, `ageFromBirthday(birthday)`, `holiday()`, `festival()`

### Images / Media
- `avatarUrl(size)`, `profilePictureUrl(size)`
- `placeholderImageUrl(width, height)`, `iconUrl(size)`
- `emoji()`, `backgroundUrl(width, height)`
- `logoUrl(size)`, `qrCodeUrl(data, size)`, `barcodeUrl(data)`

### Miscellaneous / Fun
- `colorHex()`, `colorRgb()`, `colorHsl()`
- `uuid()`, `boolean()`, `randomNumber(min, max)`, `randomDecimal(min, max)`
- `sportsTeam()`, `game()`
- `adjective()`, `noun()`, `verb()`
- `fantasyName()`, `planetName()`, `starName()`
- `chemicalElement()`, `medicalData()`

### Animals & Nature
- `animal()`, `dogBreed()`, `catBreed()`
- `plant()`, `flower()`, `tree()`
- `naturalElement()`, `mountain()`, `river()`, `lake()`
- `weatherCondition()`, `temperature(celsius)`, `humidity()`, `windSpeed()`

### Authentication & Security
- `password(length)`, `pinCode(length)`
- `jwtToken()`, `oauthToken()`, `accessToken()`, `refreshToken()`
- `securityQuestion()`, `securityAnswer()`
- `sessionId()`, `csrfToken()`, `twoFactorCode()`, `recoveryCode()`

### Vehicle & Transport
- `brand()`, `model()`, `vehicle()`
- `color()`, `fuelType()`, `vehicleType()`
- `licensePlate()`, `vin()`, `registrationNumber()`
- `year()`, `mileage()`, `fuelEfficiency()`
- `transmission()`, `drivetrain()`, `engineType()`, `horsepower()`
- `fullVehicleDescription()`

### Food & Beverages
- `food()`, `drink()`, `beverage()`
- `ingredient()`, `cuisine()`, `dessert()`
- `fruit()`, `vegetable()`, `dish()`, `recipe()`
- `meal()`, `spice()`, `cookingMethod()`, `dietaryRestriction()`
- `calories()`, `restaurantName()`

## Additional information

This package uses Dart's built-in `Random` class for randomization and does not require any external dependencies. All data is generated locally and does not make network requests (except for placeholder image URLs which point to public services).

For issues, feature requests, or contributions, please visit the GitHub repository.

# Contributors

Have you found a bug or have a suggestion of how to enhance fake Package? Open an issue or pull request and we will take a look at it as soon as possible.

# Report bugs or issues

You are welcome to open a _[ticket](https://github.com/rohit-chouhan/fake-flutter/issues)_ on github if any problems arise. New ideas are always welcome.

# Copyright and License

> Copyright © 2025 **[Rohit Chouhan](https://rohitchouhan.com)**. Licensed under the _[MIT LICENSE](https://github.com/rohit-chouhan/fake-flutter/blob/main/LICENSE)_.
