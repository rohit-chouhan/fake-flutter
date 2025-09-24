import 'dart:math';

class FakeTravel {
  static final Random _random = Random();

  static const List<String> _airlines = [
    'American Airlines', 'Delta Air Lines', 'United Airlines', 'Southwest Airlines',
    'Lufthansa', 'British Airways', 'Air France', 'Emirates', 'Qatar Airways', 'Singapore Airlines'
  ];

  static const List<String> _airports = [
    'JFK - John F. Kennedy International', 'LAX - Los Angeles International',
    'ORD - O\'Hare International', 'DFW - Dallas/Fort Worth International',
    'LHR - London Heathrow', 'CDG - Charles de Gaulle', 'FRA - Frankfurt Airport',
    'DXB - Dubai International', 'SIN - Singapore Changi', 'HND - Tokyo Haneda'
  ];

  static const List<String> _destinations = [
    'New York', 'London', 'Paris', 'Tokyo', 'Sydney', 'Dubai', 'Singapore',
    'Hong Kong', 'Los Angeles', 'Chicago', 'Toronto', 'Berlin', 'Rome', 'Barcelona'
  ];

  static const List<String> _hotels = [
    'Hilton', 'Marriott', 'Sheraton', 'Hyatt', 'InterContinental', 'Ritz-Carlton',
    'Four Seasons', 'Mandarin Oriental', 'The Plaza', 'Bellagio'
  ];

  static const List<String> _roomTypes = [
    'Standard Room', 'Deluxe Room', 'Suite', 'Executive Suite', 'Presidential Suite',
    'Ocean View Room', 'Mountain View Room', 'Connecting Rooms'
  ];

  static String airline() {
    return _airlines[_random.nextInt(_airlines.length)];
  }

  static String airport() {
    return _airports[_random.nextInt(_airports.length)];
  }

  static String airportCode() {
    final codes = ['JFK', 'LAX', 'ORD', 'DFW', 'LHR', 'CDG', 'FRA', 'DXB', 'SIN', 'HND'];
    return codes[_random.nextInt(codes.length)];
  }

  static String destination() {
    return _destinations[_random.nextInt(_destinations.length)];
  }

  static String flightNumber() {
    final airlineCodes = ['AA', 'DL', 'UA', 'WN', 'LH', 'BA', 'AF', 'EK', 'QR', 'SQ'];
    final code = airlineCodes[_random.nextInt(airlineCodes.length)];
    final number = _random.nextInt(9000) + 1000;
    return '$code$number';
  }

  static String hotelName() {
    return _hotels[_random.nextInt(_hotels.length)];
  }

  static String roomType() {
    return _roomTypes[_random.nextInt(_roomTypes.length)];
  }

  static int roomNumber() {
    return _random.nextInt(500) + 100; // 100-600
  }

  static String seatNumber() {
    final rows = _random.nextInt(30) + 1; // 1-30
    final seats = ['A', 'B', 'C', 'D', 'E', 'F'][_random.nextInt(6)];
    return '$rows$seats';
  }

  static String travelClass() {
    return ['Economy', 'Premium Economy', 'Business', 'First Class'][_random.nextInt(4)];
  }

  static double flightDuration() {
    return 1 + _random.nextDouble() * 23; // 1-24 hours
  }

  static String bookingReference() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final buffer = StringBuffer();
    for (var i = 0; i < 6; i++) {
      buffer.write(chars[_random.nextInt(chars.length)]);
    }
    return buffer.toString();
  }

  static String passportNumber() {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final buffer = StringBuffer();
    for (var i = 0; i < 9; i++) {
      buffer.write(chars[_random.nextInt(chars.length)]);
    }
    return buffer.toString();
  }

  static String visaType() {
    return ['Tourist', 'Business', 'Student', 'Work', 'Transit'][_random.nextInt(5)];
  }

  static String travelInsurance() {
    final providers = ['Allianz', 'AXA', 'Travel Guard', 'Squaremouth', 'Generali'];
    return providers[_random.nextInt(providers.length)];
  }

  static String currency() {
    final currencies = ['USD', 'EUR', 'GBP', 'JPY', 'CAD', 'AUD', 'CHF', 'CNY'];
    return currencies[_random.nextInt(currencies.length)];
  }

  static double exchangeRate() {
    return 0.5 + _random.nextDouble() * 2.0; // 0.5-2.5
  }

  static String travelAgency() {
    final agencies = ['Expedia', 'Booking.com', 'TripAdvisor', 'Kayak', 'Priceline'];
    return agencies[_random.nextInt(agencies.length)];
  }

  static String tourOperator() {
    final operators = ['TUI', 'Thomas Cook', 'Globus', 'Contiki', 'Intrepid Travel'];
    return operators[_random.nextInt(operators.length)];
  }

  static String cruiseLine() {
    final lines = ['Carnival', 'Royal Caribbean', 'Norwegian', 'MSC Cruises', 'Princess Cruises'];
    return lines[_random.nextInt(lines.length)];
  }

  static String rentalCarCompany() {
    final companies = ['Hertz', 'Avis', 'Enterprise', 'Budget', 'Alamo'];
    return companies[_random.nextInt(companies.length)];
  }
}