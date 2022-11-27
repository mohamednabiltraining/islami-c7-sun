import 'package:flutter/material.dart';

class MyTheme {
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color darkPrimary = Color(0xFF141A2E);
  static const Color colorYellow = Color(0xFFFACC1D);
  static const String name = 'Ahmed';
  static final ThemeData lightTheme = ThemeData(
    backgroundColor: Colors.white,
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(18), topLeft: Radius.circular(18)))),
    primaryColor: lightPrimary,
    cardColor: Colors.white,
    accentColor: lightPrimary,
    // primarySwatch: MaterialColor(
    //     0xFFB7935F,{
    //   50: Color(0xFFB7935F),
    //   100: Color(0xFFB7935F),
    // }
    // ),
    textTheme: TextTheme(
        headline6: TextStyle(fontSize: 18, color: Colors.black),
        headline4: TextStyle(fontSize: 28, color: Colors.black),
        subtitle2: TextStyle(fontSize: 14, color: Colors.black)),

    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightPrimary,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(size: 36, color: Colors.black)),
  );
  static final ThemeData darkTheme = ThemeData(
    backgroundColor: darkPrimary,
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: darkPrimary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(18), topLeft: Radius.circular(18)))),
    accentColor: colorYellow,
    cardColor: darkPrimary,
    primaryColor: darkPrimary,
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
        subtitle2: TextStyle(fontSize: 14, color: Colors.white),
        headline6: TextStyle(fontSize: 18, color: Colors.white),
        headline4: TextStyle(fontSize: 28, color: Colors.white)),
    appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: darkPrimary,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white,
        selectedItemColor: colorYellow,
        selectedIconTheme: IconThemeData(size: 36, color: Colors.yellow)),
  );
}
