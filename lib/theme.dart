import 'package:ecommercee/constant.dart';
import 'package:flutter/material.dart';

ThemeData themeData() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      titleTextStyle: TextStyle(color: kTextColor, fontSize: 18),
    ),
    fontFamily: 'Muli',
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    inputDecorationTheme: inputDecorationTheme(),
  );
}

TextTheme textTheme() {
  return const TextTheme(
    titleMedium: TextStyle(color: kTextColor),
    bodyMedium: TextStyle(color: kTextColor),
  );
}

InputDecorationTheme inputDecorationTheme() {
  var outlineInputBorder = const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(50)),
    borderSide: BorderSide(color: kPrimaryColor),
  );
  return InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
    enabledBorder: outlineInputBorder,
    labelStyle: const TextStyle(
      color: kPrimaryColor,
    ),
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}
