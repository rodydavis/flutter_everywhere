import 'package:flutter/material.dart';

class Themes {
  Themes._();

  static String get fontFamily => 'ProductSans';

  static ThemeData get dark => ThemeData(
        fontFamily: fontFamily,
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: ThemeData.dark().accentColor,
        appBarTheme: ThemeData.dark().appBarTheme,
        bottomAppBarTheme: BottomAppBarTheme(color: Colors.black),
        backgroundColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
      );

  static ThemeData get light => ThemeData(
        fontFamily: fontFamily,
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
          color: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
              fontSize: 22,
            ),
          ),
        ),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.black,
        ),
        primaryColor: Colors.black,
        accentColor: Colors.red,
      );
}
