import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'http://192.168.1.3:3000/users/login'; // Ganti dengan URL API Anda

  Future<Map<String, dynamic>> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('http://192.168.1.3:3000/users/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'email': email, 'password': password}),
    );

    print('Response status: ${response.statusCode}'); // Debug log
    print('Response body: ${response.body}'); // Debug log

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to login: ${response.body}');
    }
  }
}
// Fungsi untuk mendapatkan semua buku
  Future<List<dynamic>> getBooks() async {
    final response = await http.get(
      Uri.parse('http://192.168.1.3:3000/users/edukasi'),
      headers: {'Content-Type': 'application/json'},
    );

    print('Response status: ${response.statusCode}'); // Debug log
    print('Response body: ${response.body}'); // Debug log

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load books: ${response.body}');
    }
  }

  // Fungsi untuk mendapatkan buku berdasarkan ID
  Future<Map<String, dynamic>> getBookById(int id) async {
    final response = await http.get(
      Uri.parse('http://192.168.1.3:3000/users/edukasi'),
      headers: {'Content-Type': 'application/json'},
    );

    print('Response status: ${response.statusCode}'); // Debug log
    print('Response body: ${response.body}'); // Debug log

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load book: ${response.body}');
    }
  }
