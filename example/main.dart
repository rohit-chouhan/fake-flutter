import 'package:fake/fake.dart';

void main() {
  print('=== Fake Data Generator Demo ===\n');

  // Person
  print('Person:');
  print('  Full Name: ${FakePerson.fullName()}');
  print('  Age: ${FakePerson.age()}');
  print('  Email: ${FakePerson.firstName()}.${FakePerson.lastName()}@example.com');
  print('');

  // Contact
  print('Contact:');
  print('  Phone: ${FakeContact.phoneNumber()}');
  print('  Website: ${FakeContact.websiteUrl()}');
  print('  Social Handle: ${FakeContact.socialMediaHandle()}');
  print('');

  // Address
  print('Address:');
  print('  Full Address: ${FakeAddress.fullAddress()}');
  print('  City: ${FakeAddress.city()}');
  print('  Country: ${FakeAddress.country()}');
  print('');

  // Company
  print('Company:');
  print('  Company Name: ${FakeCompany.companyName()}');
  print('  Job Title: ${FakeCompany.jobTitle()}');
  print('  Business Email: ${FakeCompany.businessEmail()}');
  print('');

  // Finance
  print('Finance:');
  print('  Credit Card: ${FakeFinance.creditCardNumber()}');
  print('  IBAN: ${FakeFinance.iban()}');
  print('  Amount: \$${FakeFinance.currencyAmount(max: 1000).toStringAsFixed(2)}');
  print('');

  // Text
  print('Text:');
  print('  Lorem Words: ${FakeText.loremWords(5)}');
  print('  Quote: ${FakeText.quote()}');
  print('  Book: ${FakeText.bookName()}');
  print('');

  // Internet
  print('Internet:');
  print('  IP: ${FakeInternet.ipAddress()}');
  print('  URL: ${FakeInternet.url()}');
  print('  User Agent: ${FakeInternet.userAgent().substring(0, 50)}...');
  print('');

  // DateTime
  print('Date & Time:');
  print('  Random Date: ${FakeDateTime.randomDate()}');
  print('  Time: ${FakeDateTime.time()}');
  print('  Day of Week: ${FakeDateTime.dayOfWeek()}');
  print('');

  // Media
  print('Media:');
  print('  Avatar URL: ${FakeMedia.avatarUrl()}');
  print('  Emoji: ${FakeMedia.emoji()}');
  print('  QR Code URL: ${FakeMedia.qrCodeUrl()}');
  print('');

  // Misc
  print('Miscellaneous:');
  print('  Color: ${FakeMisc.colorHex()}');
  print('  UUID: ${FakeMisc.uuid()}');
  print('  Boolean: ${FakeMisc.boolean()}');
  print('  Random Number: ${FakeMisc.randomNumber()}');
  print('  Fantasy Name: ${FakeMisc.fantasyName()}');
  print('');

  // Animals & Nature
  print('Animals & Nature:');
  print('  Animal: ${FakeAnimals.animal()}');
  print('  Dog Breed: ${FakeAnimals.dogBreed()}');
  print('  Weather: ${FakeAnimals.weatherCondition()}');
  print('');

  // Authentication
  print('Authentication:');
  print('  JWT Token: ${FakeAuth.jwtToken().substring(0, 50)}...');
  print('  Password: ${FakeAuth.password()}');
  print('  Security Question: ${FakeAuth.securityQuestion()}');
  print('');

  // Vehicle
  print('Vehicle:');
  print('  Car: ${FakeVehicle.vehicle()}');
  print('  License Plate: ${FakeVehicle.licensePlate()}');
  print('  VIN: ${FakeVehicle.vin()}');
  print('');

  // Food
  print('Food:');
  print('  Dish: ${FakeFood.food()}');
  print('  Drink: ${FakeFood.drink()}');
  print('  Cuisine: ${FakeFood.cuisine()}');
  print('  Fruit: ${FakeFood.fruit()}');
  print('');

  // Medical
  print('Medical:');
  print('  Disease: ${FakeMedical.disease()}');
  print('  Blood Pressure: ${FakeMedical.bloodPressure()}');
  print('  Doctor: ${FakeMedical.doctorName()}');
  print('');

  // Education
  print('Education:');
  print('  University: ${FakeEducation.universityName()}');
  print('  Subject: ${FakeEducation.subject()}');
  print('  GPA: ${FakeEducation.gpa().toStringAsFixed(2)}');
  print('');

  // Technology
  print('Technology:');
  print('  Programming Language: ${FakeTechnology.programmingLanguage()}');
  print('  Framework: ${FakeTechnology.framework()}');
  print('  Version: ${FakeTechnology.versionNumber()}');
  print('');

  // Travel
  print('Travel:');
  print('  Airline: ${FakeTravel.airline()}');
  print('  Flight: ${FakeTravel.flightNumber()}');
  print('  Destination: ${FakeTravel.destination()}');
  print('');

  // Science
  print('Science:');
  print('  Element: ${FakeScience.element()}');
  print('  Scientist: ${FakeScience.scientist()}');
  print('  DNA: ${FakeScience.dnaSequence().substring(0, 10)}...');
  print('');

  // Sports
  print('Sports:');
  print('  Team: ${FakeSports.footballTeam()}');
  print('  Score: ${FakeSports.score()}');
  print('  Player: ${FakeSports.playerName()}');
  print('');

  // Business
  print('Business:');
  print('  Product: ${FakeBusiness.productName()}');
  print('  Price: \$${FakeBusiness.price().toStringAsFixed(2)}');
  print('  SKU: ${FakeBusiness.sku()}');
  print('');

  // Advanced Features
  print('Advanced Features:');
  print('  Real Estate: ${FakeRealEstate.propertyType()} - \$${FakeRealEstate.price().round()}');
  print('  Legal: ${FakeLegal.contractType()} - Case ${FakeLegal.caseNumber()}');
  print('  Government: ${FakeGovernment.department()} - SSN ${FakeGovernment.ssn()}');
  print('  Weather: ${FakeWeather.condition()} ${FakeWeather.temperature().round()}°C');
  print('  Event: ${FakeEvents.eventName()} with ${FakeEvents.attendeeCount()} attendees');
  print('');

  // Data Relationships
  print('Data Relationships:');
  final person = FakeRelationships.personWithRelationships();
  print('  Person: ${person['name']} works at ${person['employment']['company']}');
  print('  Medical: Blood type ${person['medical']['bloodType']}');

  final company = FakeRelationships.companyWithRelationships(employeeCount: 2);
  print('  Company: ${company['name']} has ${company['employeeCount']} employees');
  print('');

  // Serialization
  print('Serialization:');
  final simpleDataset = {
    'users': FakeBatch.people(2),
    'products': FakeBatch.products(3),
  };
  final jsonData = FakeSerialization.toJson(simpleDataset);
  final users = simpleDataset['users'] as List;
  print('  Generated simple dataset with ${users.length} users');
  print('  JSON length: ${jsonData.length} characters');
  print('');

  // Batch Generation
  print('Batch Generation:');
  final batchUsers = FakeBatch.people(3);
  print('  Generated ${batchUsers.length} users');
  print('  First user: ${batchUsers[0]['name']}');
  print('');
}