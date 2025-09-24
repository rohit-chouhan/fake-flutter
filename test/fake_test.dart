import 'package:flutter_test/flutter_test.dart';

import 'package:fake/fake.dart';

void main() {
  group('FakePerson', () {
    test('firstName returns non-empty string', () {
      expect(FakePerson.firstName(), isNotEmpty);
    });

    test('lastName returns non-empty string', () {
      expect(FakePerson.lastName(), isNotEmpty);
    });

    test('fullName returns combination of first and last', () {
      final full = FakePerson.fullName();
      expect(full, isNotEmpty);
      expect(full.split(' '), hasLength(2));
    });

    test('age returns value in range', () {
      final age = FakePerson.age();
      expect(age, greaterThanOrEqualTo(18));
      expect(age, lessThanOrEqualTo(80));
    });

    test('gender returns valid gender', () {
      final gender = FakePerson.gender();
      expect(['Male', 'Female', 'Non-binary', 'Other'], contains(gender));
    });
  });

  group('FakeContact', () {
    test('email returns valid email format', () {
      final email = FakeContact.email();
      expect(email, contains('@'));
      expect(email.split('@'), hasLength(2));
    });

    test('phoneNumber returns formatted phone', () {
      final phone = FakeContact.phoneNumber();
      expect(phone, startsWith('+1-'));
    });

    test('websiteUrl returns valid URL', () {
      final url = FakeContact.websiteUrl();
      expect(url, startsWith('https://'));
    });
  });

  group('FakeAddress', () {
    test('city returns non-empty string', () {
      expect(FakeAddress.city(), isNotEmpty);
    });

    test('country returns non-empty string', () {
      expect(FakeAddress.country(), isNotEmpty);
    });

    test('fullAddress returns complete address', () {
      final address = FakeAddress.fullAddress();
      expect(address, isNotEmpty);
      expect(address.split(', '), hasLength(greaterThan(2)));
    });

    test('latitude returns value in range', () {
      final lat = FakeAddress.latitude();
      expect(lat, greaterThanOrEqualTo(-90));
      expect(lat, lessThanOrEqualTo(90));
    });
  });

  group('FakeCompany', () {
    test('companyName returns non-empty string', () {
      expect(FakeCompany.companyName(), isNotEmpty);
    });

    test('jobTitle returns non-empty string', () {
      expect(FakeCompany.jobTitle(), isNotEmpty);
    });

    test('businessEmail returns valid email', () {
      final email = FakeCompany.businessEmail();
      expect(email, contains('@'));
    });
  });

  group('FakeFinance', () {
    test('creditCardNumber returns 16 digit number', () {
      final card = FakeFinance.creditCardNumber();
      expect(card.length, anyOf([16, 15])); // Visa/Mastercard vs Amex
      expect(int.tryParse(card.replaceAll('-', '')), isNotNull);
    });

    test('iban returns valid format', () {
      final iban = FakeFinance.iban();
      expect(iban, startsWith('US'));
      expect(iban.length, greaterThan(10));
    });

    test('currencyAmount returns positive value', () {
      final amount = FakeFinance.currencyAmount();
      expect(amount, greaterThanOrEqualTo(0));
    });
  });

  group('FakeText', () {
    test('loremWords returns correct number of words', () {
      final words = FakeText.loremWords(5);
      expect(words.split(' '), hasLength(5));
    });

    test('loremSentences returns non-empty string', () {
      final sentences = FakeText.loremSentences(3);
      expect(sentences, isNotEmpty);
    });

    test('quote returns non-empty string', () {
      expect(FakeText.quote(), isNotEmpty);
    });
  });

  group('FakeInternet', () {
    test('ipAddress returns valid IPv4 format', () {
      final ip = FakeInternet.ipAddress();
      final parts = ip.split('.');
      expect(parts, hasLength(4));
      for (final part in parts) {
        expect(int.parse(part), lessThan(256));
      }
    });

    test('url returns valid URL', () {
      final url = FakeInternet.url();
      expect(url, startsWith('https://'));
    });

    test('macAddress returns valid format', () {
      final mac = FakeInternet.macAddress();
      expect(mac.split(':'), hasLength(6));
    });
  });

  group('FakeDateTime', () {
    test('randomDate returns DateTime', () {
      final date = FakeDateTime.randomDate();
      expect(date, isA<DateTime>());
    });

    test('time returns valid time format', () {
      final time = FakeDateTime.time();
      expect(time.split(':'), hasLength(3));
    });

    test('dayOfWeek returns valid day', () {
      final day = FakeDateTime.dayOfWeek();
      expect(['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'], contains(day));
    });
  });

  group('FakeMedia', () {
    test('avatarUrl returns valid URL', () {
      final url = FakeMedia.avatarUrl();
      expect(url, startsWith('https://'));
      expect(url, contains('via.placeholder.com'));
    });

    test('emoji returns emoji character', () {
      final emoji = FakeMedia.emoji();
      expect(emoji.length, greaterThan(0));
    });

    test('qrCodeUrl returns valid URL', () {
      final url = FakeMedia.qrCodeUrl();
      expect(url, startsWith('https://'));
      expect(url, contains('qrserver.com'));
    });
  });

  group('FakeMisc', () {
    test('colorHex returns valid hex color', () {
      final color = FakeMisc.colorHex();
      expect(color, startsWith('#'));
      expect(color.length, 7);
    });

    test('uuid returns valid UUID format', () {
      final uuid = FakeMisc.uuid();
      final parts = uuid.split('-');
      expect(parts, hasLength(5));
      expect(parts[0].length, 8);
      expect(parts[1].length, 4);
      expect(parts[2].length, 4);
      expect(parts[3].length, 4);
      expect(parts[4].length, 12);
    });

    test('boolean returns bool', () {
      final value = FakeMisc.boolean();
      expect(value, isA<bool>());
    });

    test('randomNumber returns int in range', () {
      final num = FakeMisc.randomNumber(min: 10, max: 20);
      expect(num, greaterThanOrEqualTo(10));
      expect(num, lessThanOrEqualTo(20));
    });

    test('fantasyName returns non-empty string', () {
      expect(FakeMisc.fantasyName(), isNotEmpty);
    });
  });

  group('FakeAnimals', () {
    test('animal returns non-empty string', () {
      expect(FakeAnimals.animal(), isNotEmpty);
    });

    test('dogBreed returns non-empty string', () {
      expect(FakeAnimals.dogBreed(), isNotEmpty);
    });

    test('weatherCondition returns non-empty string', () {
      expect(FakeAnimals.weatherCondition(), isNotEmpty);
    });
  });

  group('FakeAuth', () {
    test('jwtToken returns valid JWT format', () {
      final token = FakeAuth.jwtToken();
      expect(token.split('.'), hasLength(3));
    });

    test('password returns string of correct length', () {
      final pass = FakeAuth.password(length: 12);
      expect(pass.length, 12);
    });

    test('securityQuestion returns non-empty string', () {
      expect(FakeAuth.securityQuestion(), isNotEmpty);
    });
  });

  group('FakeVehicle', () {
    test('brand returns non-empty string', () {
      expect(FakeVehicle.brand(), isNotEmpty);
    });

    test('licensePlate returns 7 character string', () {
      final plate = FakeVehicle.licensePlate();
      expect(plate.length, 7);
    });

    test('vin returns 17 character string', () {
      final vin = FakeVehicle.vin();
      expect(vin.length, 17);
    });
  });

  group('FakeFood', () {
    test('food returns non-empty string', () {
      expect(FakeFood.food(), isNotEmpty);
    });

    test('drink returns non-empty string', () {
      expect(FakeFood.drink(), isNotEmpty);
    });

    test('cuisine returns non-empty string', () {
      expect(FakeFood.cuisine(), isNotEmpty);
    });

    test('fruit returns non-empty string', () {
      expect(FakeFood.fruit(), isNotEmpty);
    });
  });

  group('FakeMedical', () {
    test('disease returns non-empty string', () {
      expect(FakeMedical.disease(), isNotEmpty);
    });

    test('bloodPressure returns valid format', () {
      final bp = FakeMedical.bloodPressure();
      expect(bp, contains('/'));
    });
  });

  group('FakeEducation', () {
    test('universityName returns non-empty string', () {
      expect(FakeEducation.universityName(), isNotEmpty);
    });

    test('gpa returns value in range', () {
      final gpa = FakeEducation.gpa();
      expect(gpa, greaterThanOrEqualTo(1.0));
      expect(gpa, lessThanOrEqualTo(4.0));
    });
  });

  group('FakeTechnology', () {
    test('programmingLanguage returns non-empty string', () {
      expect(FakeTechnology.programmingLanguage(), isNotEmpty);
    });

    test('versionNumber returns valid format', () {
      final version = FakeTechnology.versionNumber();
      expect(version.split('.'), hasLength(3));
    });
  });

  group('FakeTravel', () {
    test('airline returns non-empty string', () {
      expect(FakeTravel.airline(), isNotEmpty);
    });

    test('flightNumber returns valid format', () {
      final flight = FakeTravel.flightNumber();
      expect(flight.length, greaterThan(3));
    });
  });

  group('FakeScience', () {
    test('element returns non-empty string', () {
      expect(FakeScience.element(), isNotEmpty);
    });

    test('scientist returns non-empty string', () {
      expect(FakeScience.scientist(), isNotEmpty);
    });
  });

  group('FakeSports', () {
    test('sport returns non-empty string', () {
      expect(FakeSports.sport(), isNotEmpty);
    });

    test('score returns valid format', () {
      final score = FakeSports.score();
      expect(score, contains('-'));
    });
  });

  group('FakeBusiness', () {
    test('productName returns non-empty string', () {
      expect(FakeBusiness.productName(), isNotEmpty);
    });

    test('price returns positive value', () {
      final price = FakeBusiness.price();
      expect(price, greaterThanOrEqualTo(0));
    });
  });

  group('FakeBatch', () {
    test('people returns correct count', () {
      final people = FakeBatch.people(5);
      expect(people, hasLength(5));
      expect(people.first, contains('name'));
    });

    test('dataset returns complete structure', () {
      final dataset = FakeBatch.dataset(users: 2, companyCount: 1);
      expect(dataset['users'], hasLength(2));
      expect(dataset['companies'], hasLength(1));
    });
  });

  group('FakeRealEstate', () {
    test('price returns positive value', () {
      final price = FakeRealEstate.price();
      expect(price, greaterThan(0));
    });

    test('bedrooms returns valid number', () {
      final beds = FakeRealEstate.bedrooms();
      expect(beds, greaterThanOrEqualTo(1));
      expect(beds, lessThanOrEqualTo(6));
    });
  });

  group('FakeLegal', () {
    test('contractType returns non-empty string', () {
      expect(FakeLegal.contractType(), isNotEmpty);
    });

    test('caseNumber returns valid format', () {
      final caseNum = FakeLegal.caseNumber();
      expect(caseNum, contains('-CV-'));
    });
  });

  group('FakeGovernment', () {
    test('ssn returns valid format', () {
      final ssn = FakeGovernment.ssn();
      expect(ssn.split('-'), hasLength(3));
    });

    test('department returns non-empty string', () {
      expect(FakeGovernment.department(), isNotEmpty);
    });
  });

  group('FakeWeather', () {
    test('temperature returns number', () {
      final temp = FakeWeather.temperature();
      expect(temp, isA<double>());
    });

    test('forecast returns correct number of days', () {
      final forecast = FakeWeather.forecast(days: 3);
      expect(forecast, hasLength(3));
    });
  });

  group('FakeEvents', () {
    test('eventName returns non-empty string', () {
      expect(FakeEvents.eventName(), isNotEmpty);
    });

    test('attendeeCount returns positive number', () {
      final count = FakeEvents.attendeeCount();
      expect(count, greaterThan(0));
    });
  });

  group('FakeSerialization', () {
    test('toJson returns valid JSON', () {
      final data = {'test': 'value'};
      final json = FakeSerialization.toJson(data);
      expect(json, contains('"test":"value"'));
    });

    test('toCsv returns valid CSV', () {
      final data = [{'name': 'John', 'age': 30}];
      final csv = FakeSerialization.toCsv(data);
      expect(csv, contains('name,age'));
      expect(csv, contains('John,30'));
    });
  });

  group('FakeRelationships', () {
    test('personWithRelationships returns complete person', () {
      final person = FakeRelationships.personWithRelationships();
      expect(person['name'], isNotEmpty);
      expect(person['employment'], isNotNull);
      expect(person['medical'], isNotNull);
    });

    test('companyWithRelationships includes employees', () {
      final company = FakeRelationships.companyWithRelationships(employeeCount: 3);
      expect(company['employees'], hasLength(3));
      expect(company['departments'], hasLength(4));
    });
  });
}
