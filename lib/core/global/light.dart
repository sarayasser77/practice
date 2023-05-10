import 'package:flutter/material.dart';

ThemeData LightTheme()=> ThemeData(
textTheme:const TextTheme(
  labelLarge: TextStyle(
    color: Colors.green
  ),

  labelMedium: TextStyle(
    color: Colors.orange
  ),
),
 primaryColor: Colors.green,
 appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black
),
  scaffoldBackgroundColor: Colors.grey
);