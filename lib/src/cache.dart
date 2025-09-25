import 'dart:math';

/// Simple caching utility for frequently used fake data
class FakeCache {
  static final Random _random = Random();
  static final Map<String, List<String>> _cache = {};

  /// Get cached data or generate new if not cached
  static List<String> getCached(String key, List<String> generator, int size) {
    if (!_cache.containsKey(key)) {
      _cache[key] = List.generate(
        size,
        (_) => generator[_random.nextInt(generator.length)],
      );
    }
    return _cache[key]!;
  }

  /// Clear all cached data
  static void clearCache() {
    _cache.clear();
  }

  /// Get cache size
  static int get cacheSize => _cache.length;

  /// Pre-warm cache with common data
  static void warmCache() {
    // This could be called during app initialization
    // to pre-generate common fake data
  }
}

/// Optimized random number generation
class FastRandom {
  static final Random _random = Random();
  static final List<int> _ints = List.generate(
    1000,
    (_) => _random.nextInt(1000000),
  );
  static final List<double> _doubles = List.generate(
    1000,
    (_) => _random.nextDouble(),
  );
  static int _intIndex = 0;
  static int _doubleIndex = 0;

  static int nextInt(int max) {
    if (_intIndex >= _ints.length) _intIndex = 0;
    return _ints[_intIndex++] % max;
  }

  static double nextDouble() {
    if (_doubleIndex >= _doubles.length) _doubleIndex = 0;
    return _doubles[_doubleIndex++];
  }

  static bool nextBool() {
    return nextInt(2) == 1;
  }
}
