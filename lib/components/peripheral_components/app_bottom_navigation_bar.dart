import 'package:flutter/material.dart';

//TODO Re-implement SVG functionality.
class AppBottomNavigationBar extends StatelessWidget {
  final ValueChanged handleTap;

  AppBottomNavigationBar(this.handleTap);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: Color(0xFF292929),
        selectedFontSize: 13,
        unselectedFontSize: 13,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).bottomAppBarColor,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.label),
            label:'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.label),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.label),
            label: 'Community Fund',
          ),
        ],
        onTap: handleTap
    );
  }
}