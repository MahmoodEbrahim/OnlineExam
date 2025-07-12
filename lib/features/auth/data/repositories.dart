

import '../domain/entities.dart';
import '../domain/repositories.dart';
import 'datasources.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDatasource remoteDatasource;

  AuthRepositoryImpl(this.remoteDatasource);

  @override
  Future<UserEntity> login(String email, String password) {
    return remoteDatasource.login(email, password);
  }

  @override
  Future<UserEntity> signup(String name, String email, String password, int phone) {
    throw UnimplementedError();
  }
}
