import 'dart:math';

class FakeFood {
  static final Random _random = Random();

  static const List<String> _foods = [
    'Pizza', 'Burger', 'Pasta', 'Salad', 'Sushi', 'Tacos', 'Sandwich', 'Soup',
    'Steak', 'Chicken Curry', 'Fish and Chips', 'Fried Rice', 'Lasagna', 'Omelette',
    'Grilled Cheese', 'Hot Dog', 'Burrito', 'Pad Thai', 'Ramen', 'Pho'
  ];

  static const List<String> _drinks = [
    'Coffee', 'Tea', 'Soda', 'Water', 'Juice', 'Beer', 'Wine', 'Cocktail',
    'Smoothie', 'Milkshake', 'Lemonade', 'Iced Tea', 'Hot Chocolate', 'Cappuccino'
  ];

  static const List<String> _ingredients = [
    'Tomato', 'Onion', 'Garlic', 'Cheese', 'Chicken', 'Beef', 'Rice', 'Pasta',
    'Lettuce', 'Carrot', 'Potato', 'Bread', 'Egg', 'Milk', 'Flour', 'Sugar',
    'Salt', 'Pepper', 'Olive Oil', 'Butter', 'Basil', 'Oregano', 'Thyme', 'Rosemary'
  ];

  static const List<String> _cuisines = [
    'Italian', 'Mexican', 'Chinese', 'Japanese', 'Indian', 'French', 'Thai',
    'Greek', 'Spanish', 'American', 'Korean', 'Vietnamese', 'Turkish', 'Lebanese'
  ];

  static const List<String> _desserts = [
    'Chocolate Cake', 'Ice Cream', 'Cookies', 'Pie', 'Brownie', 'Cheesecake',
    'Tiramisu', 'Pudding', 'Muffin', 'Donut', 'Cupcake', 'Macaron'
  ];

  static const List<String> _fruits = [
    'Apple', 'Banana', 'Orange', 'Grape', 'Strawberry', 'Blueberry', 'Pineapple',
    'Mango', 'Kiwi', 'Watermelon', 'Peach', 'Pear', 'Lemon', 'Lime'
  ];

  static const List<String> _vegetables = [
    'Carrot', 'Broccoli', 'Spinach', 'Tomato', 'Cucumber', 'Bell Pepper',
    'Zucchini', 'Eggplant', 'Cauliflower', 'Potato', 'Onion', 'Garlic'
  ];

  static String food() {
    return _foods[_random.nextInt(_foods.length)];
  }

  static String drink() {
    return _drinks[_random.nextInt(_drinks.length)];
  }

  static String beverage() {
    return drink();
  }

  static String ingredient() {
    return _ingredients[_random.nextInt(_ingredients.length)];
  }

  static String cuisine() {
    return _cuisines[_random.nextInt(_cuisines.length)];
  }

  static String dessert() {
    return _desserts[_random.nextInt(_desserts.length)];
  }

  static String fruit() {
    return _fruits[_random.nextInt(_fruits.length)];
  }

  static String vegetable() {
    return _vegetables[_random.nextInt(_vegetables.length)];
  }

  static String dish() {
    return food();
  }

  static String recipe() {
    final ingredients = <String>[];
    final count = 3 + _random.nextInt(5);
    for (var i = 0; i < count; i++) {
      ingredients.add(ingredient());
    }
    return '${food()} with ${ingredients.join(', ')}';
  }

  static String meal() {
    final meals = ['Breakfast', 'Lunch', 'Dinner', 'Snack'];
    return meals[_random.nextInt(meals.length)];
  }

  static String spice() {
    final spices = ['Cumin', 'Coriander', 'Turmeric', 'Ginger', 'Cinnamon', 'Paprika', 'Chili Powder'];
    return spices[_random.nextInt(spices.length)];
  }

  static String cookingMethod() {
    final methods = ['Grilled', 'Fried', 'Baked', 'Steamed', 'Boiled', 'Roasted', 'Sautéed'];
    return methods[_random.nextInt(methods.length)];
  }

  static String dietaryRestriction() {
    final restrictions = ['Vegetarian', 'Vegan', 'Gluten-Free', 'Dairy-Free', 'Nut-Free', 'Kosher'];
    return restrictions[_random.nextInt(restrictions.length)];
  }

  static double calories() {
    return 50 + _random.nextDouble() * 950; // 50-1000 calories
  }

  static String restaurantName() {
    final adjectives = ['Golden', 'Spicy', 'Fresh', 'Tasty', 'Delicious', 'Authentic'];
    final types = ['Kitchen', 'Restaurant', 'Cafe', 'Bistro', 'Diner', 'Grill'];
    return '${adjectives[_random.nextInt(adjectives.length)]} ${cuisine()} ${types[_random.nextInt(types.length)]}';
  }
}