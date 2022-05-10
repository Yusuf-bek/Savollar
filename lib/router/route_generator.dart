import 'package:flutter/material.dart';
import 'package:savollar/view/auth/sign_in.dart';
import 'package:savollar/view/auth/sign_up.dart';
import 'package:savollar/view/home/home_page.dart';
import 'package:savollar/view/solve/solving_page.dart';

class RouteGenerator {
  RouteGenerator._init();
  static final RouteGenerator _instance = RouteGenerator._init();
  static RouteGenerator get instance => _instance;
  
  Route? generate(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => HomePage(),
        );
      case "/signin":
        return MaterialPageRoute(
          builder: (context) => SignInPage(),
        );

      case "/signup":
        return MaterialPageRoute(
          builder: (context) => SignUpPage(),
        );

      case "/solve":
        return MaterialPageRoute(
          builder: (context) => SolvingPage(),
        );
    }
    return null;
  }
}
