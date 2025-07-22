import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'Route/app_route.dart';
import 'core/Theme/theme.dart';
import 'core/di/di.dart';
import 'features/profile/data/datasources/user_local_storage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('userBox');
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLoggedIn = UserLocalStorage.isLoggedIn();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: AppTheme.lightTheme,
      initialRoute: isLoggedIn ? AppRoutes.profilePage : AppRoutes.login,
      routes: AppRoutes.getRoutes(),
    );
  }
}