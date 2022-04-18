import 'package:flutter/material.dart';
import 'package:savollar/router/route_generator.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Savollar',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: "/signin",
      onGenerateRoute: RouteGenerator().generate,
    );
  }
}
