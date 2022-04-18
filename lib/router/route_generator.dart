import 'package:flutter/material.dart';
import 'package:savollar/view/auth/sign_in.dart';
import 'package:savollar/view/auth/sign_up.dart';
import 'package:savollar/view/home/home_page.dart';
import 'package:savollar/view/solve/solving_page.dart';

class RouteGenerator {
  Route? generate(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => HomePage(),
        );
      case "/signin":
        return MaterialPageRoute(
          builder: ((context) => SignInPage()),
        );

      case "signup":
        return MaterialPageRoute(
          builder: (context) => SignUpPage(),
        );

      case "/solve":
        return MaterialPageRoute(
          builder: (context) => SolvingPage(),
        );
    }
  }
}
