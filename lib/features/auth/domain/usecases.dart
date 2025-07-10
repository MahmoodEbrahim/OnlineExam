import 'package:online_exam/features/auth/domain/entities.dart';
import 'package:online_exam/features/auth/domain/repositories.dart';

class LogicUserCase{
  final AuthRepository repo;

  LogicUserCase(this.repo);

  Future<UserEntity> call(String email,String password) async{
    return await repo.login(email, password);
  }
}