import 'package:online_exam/features/auth/domain/entities.dart';

abstract class AuthRepository{
  Future<UserEntity> login(String email,String password);
  Future<UserEntity> signup(String name,String email,String password,int phone);

}