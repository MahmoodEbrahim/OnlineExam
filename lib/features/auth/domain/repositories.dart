import 'package:online_exam/features/auth/domain/entities.dart';

abstract class AuthRepository{
  Future<UserEntity> login(String email,String password);
  Future<UserEntity> signup({
    required String username,
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String rePassword,
    required String phone,
  });
}

