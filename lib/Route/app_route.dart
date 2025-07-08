import 'package:flutter/material.dart';

import '../Screen/Login&sinin/forget_password_flow.dart';
import '../Screen/Login&sinin/loginpage.dart';
import '../Screen/Login&sinin/sininpage.dart';
import '../main.dart';

abstract class AppRoutes {
  static const String login = '/login';
  static const String signup = '/signup';
  static const String forgetpass = '/forgetpass';
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      login: (context) => const LoginPage(),
      forgetpass: (context) => const ForgetPasswordFlow(),
      signup: (context) => const SignupPage(),
    };
  }
}