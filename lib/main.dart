import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:savollar/core/themes/dark_theme.dart';
import 'package:savollar/router/route_generator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      child: const MyApp(),
      supportedLocales: const [
        Locale("uz", "UZ"),
        Locale("en", "US"),
        Locale("ru", "RU"),
      ],
      path: "assets/translations",
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Savollar',
      theme: darkTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      initialRoute: "/tabbar",
      onGenerateRoute: RouteGenerator.instance.generate,
    );
  }
}
