// data/models/user_model.dart

import '../domain/entities.dart';

class UserModel extends UserEntity {
  UserModel({required String id, required String email, required String name})
      : super(id: id, email: email, name: name);

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'],
      name: json['name'],
    );
  }
}
