import 'dart:convert';
import 'package:http/http.dart' as http;
import '../error/failure.dart';

class ApiClient {
  final String _baseUrl = 'https://newsapi.org/v2';
  final String _apiKey = 'YOUR_API_KEY_HERE'; // Replace with real key

  Future<dynamic> get(String endpoint) async {
    final response = await http.get(Uri.parse('\$_baseUrl\$endpoint&apiKey=\$_apiKey'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Failure('Failed to load data: \${response.statusCode}');
    }
  }
}
