// data/datasources/auth_remote_datasource.dart
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'models.dart';

class AuthRemoteDatasource {
  Future<UserModel> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('https://exam.elevateegy.com/api/v1/auth/signin'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "email": email,
        "password": password,
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return UserModel.fromJson(data['user']);
    } else {
      throw Exception('Login failed');
    }
  }
}
