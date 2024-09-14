import 'package:flutter/material.dart';

ThemeData appdarkThem =ThemeData(
  useMaterial3: false,
    appBarTheme: AppBarTheme(backgroundColor: Colors.grey),
    textTheme:
    TextTheme(bodyLarge: TextStyle(fontSize: 24, color: Colors.black)),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(Colors.grey)))

);