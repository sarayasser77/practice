import 'package:flutter/material.dart';

ThemeData DarkTheme()=> ThemeData(
    textTheme:const TextTheme(
      labelLarge: TextStyle(
          color: Colors.white
      ),

      labelMedium: TextStyle(
          color: Colors.blue
      ),
    ),
    primaryColor: Colors.blueGrey,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white
    ),
    scaffoldBackgroundColor: Colors.pink
);