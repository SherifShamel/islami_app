import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor = Color(0XFFB7935F);
  static const Color primaryDarkColor = Color(0XFF141A2E);
  static const Color onPrimaryDarkColor = Color(0XFFFACC1D);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontFamily: "El Messiri",
          fontSize: 30,
          fontWeight: FontWeight.bold,
        )),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedLabelStyle: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      backgroundColor: primaryColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      selectedIconTheme: IconThemeData(
        color: Colors.black,
      ),
      unselectedItemColor: Colors.white,
      unselectedLabelStyle: TextStyle(
        fontSize: 12,
        color: Colors.white,
        fontWeight: FontWeight.normal,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 25,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 25,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 20,
        fontWeight: FontWeight.normal,
      ),
    ),
    dividerTheme: const DividerThemeData(color: primaryColor),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: primaryDarkColor,
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: onPrimaryDarkColor,
        ),
        titleTextStyle: TextStyle(
          color: primaryDarkColor,
          fontFamily: "El Messiri",
          fontSize: 30,
          fontWeight: FontWeight.bold,
        )),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedLabelStyle: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      backgroundColor: primaryDarkColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: onPrimaryDarkColor,
      selectedIconTheme: IconThemeData(
        color: onPrimaryDarkColor,
      ),
      unselectedItemColor: Colors.white,
      unselectedLabelStyle: TextStyle(
        fontSize: 12,
        color: Colors.white,
        fontWeight: FontWeight.normal,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white),
      bodyLarge: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: Colors.white),
      bodyMedium: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 25,
          fontWeight: FontWeight.normal,
          color: Colors.white),
      bodySmall: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 20,
          fontWeight: FontWeight.normal,
          color: Colors.white),
    ),
    dividerTheme: const DividerThemeData(color: onPrimaryDarkColor),
  );
}
