import 'package:flutter/material.dart';

const AppBarTheme appBarTheme = AppBarTheme(
  backgroundColor: Colors.white,
  centerTitle: true,
);

const BottomNavigationBarThemeData bottomNavigationBarThemeData = BottomNavigationBarThemeData(
  selectedItemColor: Color(0xFF292929),
  selectedLabelStyle: TextStyle(fontSize: 13),
  showSelectedLabels: true,
  type: BottomNavigationBarType.fixed,
  unselectedLabelStyle: TextStyle(fontSize: 13),
);