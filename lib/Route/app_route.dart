import 'package:flutter/material.dart';


import '../features/auth/presentation/Screen/Login&sinin/forget_password_flow.dart';
import '../features/auth/presentation/bloc/signup/sinup_page.dart';
import '../features/auth/presentation/bloc/login/login_page.dart';
import '../main.dart';

abstract class AppRoutes {
  static const String login = '/login';
  static const String signup = '/signup';
  static const String forgetpass = '/forgetpass';
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      login: (context) => LoginPage(),
      forgetpass: (context) => const ForgetPasswordFlow(),
      signup: (context) =>  SignupPage(),
    };
  }
}