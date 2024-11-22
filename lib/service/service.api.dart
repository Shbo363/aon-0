
import 'package:http/http.dart' as http;
import 'dart:convert';

class Api {
  Future<Map<String, dynamic>> postRequest(String url, Map<String, dynamic> body) async {
    final response = await http.post(
      Uri.parse(url),
      body: json.encode(body),
      headers: {
        'Content-Type': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }
}






