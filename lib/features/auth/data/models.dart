
import '../domain/entities.dart';

class UserModel extends UserEntity {
  UserModel({
    required String id,
    required String username,
    required String email,
    required String name,
    required String phone,
  }) : super(
    id: id,
    username: username,
    email: email,
    name: name,
    phone: phone,
  );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    final user = json['user'];

    return UserModel(
      id: user['id'].toString(),
      username: user['username'],
      email: user['email'],
      name: '${user['firstName']} ${user['lastName']}',
      phone: user['phone'],
    );
  }
}
