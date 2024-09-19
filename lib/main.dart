import 'package:ecommercee/routes.dart';
import 'package:ecommercee/screens/splash/splash_screen.dart';
import 'package:ecommercee/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData(),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
