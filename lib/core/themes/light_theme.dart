import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
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
    errorContainer: Colors.red,
    
  ),

  inputDecorationTheme: const InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderRadius:  BorderRadius.all(
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

);
