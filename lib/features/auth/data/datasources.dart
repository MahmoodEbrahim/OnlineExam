import 'package:online_exam/features/auth/data/remote/auth_api_client.dart';

import 'models.dart';

class AuthRemoteDatasource {
  final AuthApiClient apiClient;

  AuthRemoteDatasource(this.apiClient);

  Future<UserModel> login(String email, String password) {
    return apiClient.login({
      "email": email,
      "password": password,
    });
  }

  Future<UserModel> signup(String name, String email, String password,int phone) {
    return apiClient.signup({
      "name": name,
      "email": email,
      "password": password,
      "phone":phone,
    });
  }
}
