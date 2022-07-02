import 'package:flutter/material.dart';

const Color primary = Color(0xFFFF8714);
const Color onprimary = Color(0xFF000000);
const Color secondary = Color(0xFFF5F5F5);
const Color onsecondary = Color(0xFFFFFFFF);
const Color background = Color(0xFFFFFFFF);

const double appPadding = 16.0;

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: primary,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: primary,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(primary),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide.none,
    ),
    filled: true,
    suffixIconColor: Colors.grey,
    contentPadding: const EdgeInsetsDirectional.only(start: 30),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: primary,
    iconTheme: IconThemeData(color: onprimary),
    titleTextStyle: TextStyle(
      color: onprimary,
      fontSize: 16,
    ),
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 45.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headline2: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headline3: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
    ),
    headline4: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    bodyText2: TextStyle(
      fontSize: 14,
      letterSpacing: 0.5,
    ),
    subtitle1: TextStyle(
      fontSize: 14.0,
    ),
    subtitle2: TextStyle(
      fontSize: 12.0,
    ),
  ),
);
