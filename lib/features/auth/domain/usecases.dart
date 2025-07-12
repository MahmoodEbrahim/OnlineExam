import 'package:online_exam/features/auth/domain/entities.dart';
import 'package:online_exam/features/auth/domain/repositories.dart';

class LogicUserCase{
  final AuthRepository repo;

  LogicUserCase(this.repo);

  Future<UserEntity> call(String email,String password) async{
    return await repo.login(email, password);
  }
}
class SignupUseCase {
  final AuthRepository repository;

  SignupUseCase(this.repository);

  Future<UserEntity> call({
    required String username,
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String rePassword,
    required String phone,
  }) {
    return repository.signup(
      username: username,
      firstName: firstName,
      lastName: lastName,
      email: email,
      password: password,
      rePassword: rePassword,
      phone: phone,
    );

  }
}
