import 'package:online_exam/features/auth/domain/entities.dart';

abstract class AuthRepository{
  Future<UserEntity> login(String email,String password);
}