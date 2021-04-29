import 'package:flutter/material.dart';

//TODO Re-implement SVG functionality.
class AppBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border(top: BorderSide(width: 2))),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.label),
            label: 'Wallet',
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
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.of(context).pushNamed('/');
              break;
            case 1:
              Navigator.of(context).pushNamed('/shop');
              break;
            case 2:
              Navigator.of(context).pushNamed('/community/fund');
              break;
          }
        },
      ),
    );
  }
}