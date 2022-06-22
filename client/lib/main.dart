import 'package:client/Screens/login/login_screen.dart';
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
        theme: ThemeData(
            primaryColor: const Color(0xffFF8714),
            backgroundColor: const Color(0xffFFFFFF),
            inputDecorationTheme: const InputDecorationTheme(
              fillColor: Color(0xffF5F5F5),
            )),
        home: const LoginScreen(),
        debugShowCheckedModeBanner: false);
  }
}
