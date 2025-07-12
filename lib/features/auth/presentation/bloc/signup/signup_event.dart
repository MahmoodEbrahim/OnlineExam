import 'package:equatable/equatable.dart';

abstract class SignupEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class SignupButtonPressed extends SignupEvent {
  final String name;
  final String email;
  final String password;
  final int phone;

  SignupButtonPressed({
    required this.name,
    required this.email,
    required this.password,
    required this.phone
  });

  @override
  List<Object?> get props => [name, email, password,phone];
}
