import 'package:flutter/material.dart';

class AppTheme {
  static const Color _whiteColor = Colors.white;
  static const Color _primaryColor = Color(0xff612CEE);

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    primaryColor: _primaryColor,
    indicatorColor: _whiteColor,

    /// appbar theme
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),

    /// text theme
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontWeight: FontWeight.bold,
        color: _whiteColor,
        fontFamily: 'Pacifico',
      ),
      titleSmall: TextStyle(color: Colors.white, fontSize: 20),
      titleMedium: TextStyle(color: Colors.white70),
      bodySmall: TextStyle(
        color: _whiteColor,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      headlineSmall: TextStyle(
        color: _whiteColor,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
