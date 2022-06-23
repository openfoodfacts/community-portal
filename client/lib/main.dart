import 'package:client/Screens/login/login_screen.dart';
import 'package:client/themes/theme_constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Community-portal',
        theme: lightTheme,
        home: const LoginScreen(),
        debugShowCheckedModeBanner: false);
  }
}
