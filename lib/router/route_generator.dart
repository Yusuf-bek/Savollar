
import 'package:flutter/material.dart';
import 'package:savollar/core/components/tab_bar/my_tab_bar.dart';
import 'package:savollar/view/home/home_page.dart';
import 'package:savollar/view/solve/solving_page.dart';

class RouteGenerator {
  RouteGenerator._init();
  static final RouteGenerator _instance = RouteGenerator._init();
  static RouteGenerator get instance => _instance;

  Route? generate(RouteSettings settings) {
    switch (settings.name) {
      case "/tabbar":
        return MaterialPageRoute(builder: (context) => MyTabBar());
      case "/":
        return MaterialPageRoute(
          builder: (context) => HomePage(),
        );
      case "/solve":
        return MaterialPageRoute(
          builder: (context) => const SolvingPage(),
        );
    }
    return null;
  }
}
