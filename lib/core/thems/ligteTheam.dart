import 'package:flutter/material.dart';

ThemeData aapligetThem =ThemeData(
  useMaterial3: false,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey

    ),

    textTheme: TextTheme(bodyLarge: TextStyle(fontSize: 22,color: Colors.cyan[200])),
  elevatedButtonTheme: ElevatedButtonThemeData(

      style: ButtonStyle(
backgroundColor: WidgetStateProperty.all<Color>(

  Colors.cyan
))
  )
);