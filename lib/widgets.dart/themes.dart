import 'package:flutter/material.dart';

class MyThemes {
  static ThemeData lightTheme() {
    return (ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        // ignore: deprecated_member_use
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ));
  }

  static ThemeData darkTheme() {
    return (ThemeData(
      brightness: Brightness.dark,
    ));
  }
}
