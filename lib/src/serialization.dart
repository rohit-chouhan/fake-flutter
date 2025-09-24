import 'dart:convert';
import 'batch.dart';

class FakeSerialization {
  /// Export data to JSON string
  static String toJson(dynamic data) {
    return jsonEncode(data);
  }

  /// Export data to pretty JSON string
  static String toPrettyJson(dynamic data) {
    const encoder = JsonEncoder.withIndent('  ');
    return encoder.convert(data);
  }

  /// Export list of maps to CSV string
  static String toCsv(List<Map<String, dynamic>> data, {List<String>? columns}) {
    if (data.isEmpty) return '';

    // Determine columns from first row if not provided
    final cols = columns ?? data.first.keys.toList();

    // Create CSV header
    final buffer = StringBuffer();
    buffer.writeln(cols.join(','));

    // Add data rows
    for (final row in data) {
      final values = cols.map((col) {
        final value = row[col];
        if (value == null) return '';

        // Escape commas and quotes in values
        final strValue = value.toString();
        if (strValue.contains(',') || strValue.contains('"') || strValue.contains('\n')) {
          return '"${strValue.replaceAll('"', '""')}"';
        }
        return strValue;
      });
      buffer.writeln(values.join(','));
    }

    return buffer.toString();
  }

  /// Generate and export complete dataset
  static Map<String, dynamic> exportDataset({
    int users = 10,
    int companies = 5,
    int products = 20,
    int orders = 50,
    String format = 'json', // 'json' or 'csv'
  }) {
    final dataset = FakeBatch.dataset(
      users: users,
      companyCount: companies,
      productCount: products,
      orderCount: orders,
    );

    if (format == 'csv') {
      return {
        'users': toCsv(dataset['users'] as List<Map<String, dynamic>>),
        'companies': toCsv(dataset['companies'] as List<Map<String, dynamic>>),
        'products': toCsv(dataset['products'] as List<Map<String, dynamic>>),
        'orders': toCsv(dataset['orders'] as List<Map<String, dynamic>>),
      };
    }

    return dataset;
  }

  /// Export to SQL INSERT statements
  static String toSqlInserts(String tableName, List<Map<String, dynamic>> data) {
    if (data.isEmpty) return '';

    final columns = data.first.keys.join(', ');
    final buffer = StringBuffer();

    for (final row in data) {
      final values = row.values.map((value) {
        if (value is String) {
          return "'${value.replaceAll("'", "''")}'";
        } else if (value is DateTime) {
          return "'${value.toIso8601String()}'";
        } else {
          return value.toString();
        }
      }).join(', ');

      buffer.writeln('INSERT INTO $tableName ($columns) VALUES ($values);');
    }

    return buffer.toString();
  }

  // XML export removed due to complexity - can be added later

  /// Generate API response format
  static Map<String, dynamic> apiResponse({
    required String endpoint,
    dynamic data,
    int statusCode = 200,
    bool success = true,
    String? error,
  }) {
    return {
      'status': statusCode,
      'success': success,
      'timestamp': DateTime.now().toIso8601String(),
      'endpoint': endpoint,
      'data': success ? data : null,
      'error': error,
      'version': '1.0',
    };
  }

  /// Generate paginated response
  static Map<String, dynamic> paginatedResponse({
    required List<dynamic> items,
    int page = 1,
    int limit = 20,
    int? total,
  }) {
    final totalItems = total ?? items.length;
    final totalPages = (totalItems / limit).ceil();

    return {
      'data': items,
      'pagination': {
        'page': page,
        'limit': limit,
        'total': totalItems,
        'totalPages': totalPages,
        'hasNext': page < totalPages,
        'hasPrev': page > 1,
      },
      'meta': {
        'timestamp': DateTime.now().toIso8601String(),
        'count': items.length,
      },
    };
  }
}