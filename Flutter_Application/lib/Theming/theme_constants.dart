import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(backgroundColor: Colors.black),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 40, vertical: 8)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
            backgroundColor: MaterialStateProperty.all(Colors.black))),
    textTheme: TextTheme(
        headlineMedium: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
    inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.black, width: 3)),
        fillColor: Colors.white,
        filled: true),
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: Colors.black));

ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: Colors.deepOrange),
    brightness: Brightness.dark,
    switchTheme: SwitchThemeData(
        trackColor: MaterialStateProperty.all(Colors.deepOrange),
        thumbColor: MaterialStateProperty.all(Colors.black)),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.black),
            padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 40, vertical: 8)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
            backgroundColor: MaterialStateProperty.all(Colors.deepOrange))),
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(
            splashColor:Colors.black,backgroundColor: Colors.deepOrange),
    textTheme: TextTheme(
        headlineMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.white, width: 3)),
    ));