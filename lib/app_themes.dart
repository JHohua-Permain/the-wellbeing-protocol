import 'package:flutter/material.dart';

// The themes of the application.

const AppBarTheme appBarTheme = AppBarTheme(
  backgroundColor: Colors.white,
  centerTitle: true,
  iconTheme: iconTheme,
);

const BottomNavigationBarThemeData bottomNavigationBarTheme =
    BottomNavigationBarThemeData(
  selectedItemColor: Color(0xFF292929),
  selectedLabelStyle: TextStyle(fontSize: 13),
  showSelectedLabels: true,
  type: BottomNavigationBarType.fixed,
  unselectedLabelStyle: TextStyle(fontSize: 13),
);

const Color defaultPrimaryAppColour = Color(0xFFFFAD8B);

const IconThemeData iconTheme = IconThemeData(color: Colors.black);

///Utility function that creates and returns the app's ThemeData.
ThemeData createAppTheme() {
  return ThemeData(
    primaryColor: defaultPrimaryAppColour,
    appBarTheme: appBarTheme,
    bottomNavigationBarTheme: bottomNavigationBarTheme,
  );
}
