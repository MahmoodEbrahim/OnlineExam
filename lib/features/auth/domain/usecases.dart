import 'package:online_exam/features/auth/domain/entities.dart';
import 'package:online_exam/features/auth/domain/repositories.dart';

class LogicUserCase{
  final AuthRepository repo;

  LogicUserCase(this.repo);

  Future<UserEntity> call(String email,String password) async{
    return await repo.login(email, password);
  }
}
class SignupUserCase{
  final AuthRepository repo;

  SignupUserCase(this.repo);

  Future<UserEntity> call(String name,String email,String password,int phone) async{
    return await repo.signup(name,email, password,phone);
  }
}