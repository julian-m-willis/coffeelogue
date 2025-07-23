import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://localhost:8000';
  
  // Health check endpoint
  static Future<Map<String, dynamic>> healthCheck() async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/health'),
        headers: {'Content-Type': 'application/json'},
      );
      
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to connect to server');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }
  
  // Ping endpoint
  static Future<Map<String, dynamic>> ping() async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/ping'),
        headers: {'Content-Type': 'application/json'},
      );
      
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to ping server');
      }
    } catch (e) {
      throw Exception('Network error: $e');
    }
  }
  
  // Journal endpoints (placeholders)
  static Future<List<Map<String, dynamic>>> getJournalEntries() async {
    // TODO: Implement actual API call
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    return [
      {
        'id': 1,
        'title': 'Ethiopian Yirgacheffe',
        'date': '2025-07-23',
        'flavors': ['Fruity', 'Floral', 'Citrus'],
        'rating': 4.5,
      },
      {
        'id': 2,
        'title': 'Colombian Supremo',
        'date': '2025-07-22',
        'flavors': ['Nutty', 'Chocolatey', 'Sweet'],
        'rating': 4.0,
      },
    ];
  }
  
  static Future<Map<String, dynamic>> createJournalEntry({
    required String title,
    required List<String> flavors,
    String? voiceNote,
    double? rating,
  }) async {
    // TODO: Implement actual API call
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
    return {
      'id': DateTime.now().millisecondsSinceEpoch,
      'title': title,
      'flavors': flavors,
      'voiceNote': voiceNote,
      'rating': rating,
      'date': DateTime.now().toIso8601String(),
      'success': true,
    };
  }
}
