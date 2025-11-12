import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'http://192.168.100.226:8069'; 

  Future<Map<String, dynamic>> saveTransfer(Map<String, dynamic> data) async {
    final url = Uri.parse('$baseUrl/api/save_data');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(data),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to save: ${response.body}');
    }
  }

  Future<Map<String, dynamic>> saveScreenTwo(Map<String, dynamic> data) async{
    final url = Uri.parse('$baseUrl/api/save_screen_two');
    print('Sending to Odoo: ${jsonEncode(data)}'); 
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(data),
    );

    if (response.statusCode == 200){
      return jsonDecode(response.body);
    }else{
      throw Exception('Something went wrong: ${response.body}');
    }
  }
}
