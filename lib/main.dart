import 'package:flutter/material.dart';
import 'package:ecommercee/routes.dart';
import 'package:ecommercee/screens/splash/splash_screen.dart';
import 'package:ecommercee/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
