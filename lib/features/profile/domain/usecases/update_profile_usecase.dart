import 'package:online_exam/features/auth/data/models.dart';

import '../../../auth/domain/repositories.dart';


class UpdateUserUseCase {
  final AuthRepository repo;

  UpdateUserUseCase(this.repo);

  Future<UserModel> call({
    required String username,
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
  }) async {
    return await repo.updateUser(
      username: username,
      firstName: firstName,
      lastName: lastName,
      email: email,
      phone: phone,
    );
  }
}
