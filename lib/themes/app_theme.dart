import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.green,
    textTheme: TextTheme(
      bodyLarge: TextStyle(
          color: Colors.black,
          fontSize: 18), // Remplacer bodyText1 par bodyLarge
      bodyMedium: TextStyle(
          color: Colors.grey.shade600,
          fontSize: 16), // Remplacer bodyText2 par bodyMedium
    ),
    appBarTheme: AppBarTheme(
      color: Colors.green,
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green, // Utiliser backgroundColor
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.blue,
    brightness: Brightness.dark,
    textTheme: TextTheme(
      bodyLarge: TextStyle(
          color: Colors.white,
          fontSize: 18), // Remplacer bodyText1 par bodyLarge
      bodyMedium: TextStyle(
          color: Colors.grey.shade400,
          fontSize: 16), // Remplacer bodyText2 par bodyMedium
    ),
    appBarTheme: AppBarTheme(
      color: Colors.blue,
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue, // Utiliser backgroundColor
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      ),
    ),
  );
}
