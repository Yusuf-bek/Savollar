import 'package:flutter/material.dart';
import 'package:savollar/core/components/text_styles.dart';

ThemeData darkTheme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: Colors.green,
    onPrimary: Colors.greenAccent,
    secondary: Colors.blue,
    onSecondary: Colors.blueAccent,
    error: Colors.red,
    onError: Colors.redAccent,
    background: Colors.white,
    onBackground: Colors.white30,
    surface: Colors.black,
    onSurface: Colors.black38,
  ),

  scaffoldBackgroundColor: const Color.fromARGB(255, 48, 48, 73),
  errorColor: Colors.red,
  
  inputDecorationTheme: const InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      borderSide: BorderSide(
        color: Colors.grey,
        width: 2,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
      borderSide: BorderSide(
        color: Colors.green,
        width: 2,
      ),
    ),
  ),
  
  textTheme: const TextTheme(
    headline1: MyTextStyles.welcomeText,
  ),
);
