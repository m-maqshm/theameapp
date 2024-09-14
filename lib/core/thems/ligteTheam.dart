import 'package:flutter/material.dart';

ThemeData aapligetThem = ThemeData(
    useMaterial3: false,
    appBarTheme: AppBarTheme(backgroundColor: Colors.blue),
    textTheme:
        TextTheme(bodyLarge: TextStyle(fontSize: 24, color: Colors.blue)),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(Colors.cyan)))

);
