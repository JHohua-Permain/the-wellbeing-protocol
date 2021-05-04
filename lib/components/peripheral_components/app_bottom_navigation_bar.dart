import 'package:flutter/material.dart';

//TODO Re-implement SVG functionality.
class AppBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border(top: BorderSide(width: 2))),
      child: BottomNavigationBar(
        selectedItemColor: Color(0xFF292929),
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/Rect.png'),
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/Rect.png'),
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/Rect.png'),
            ),
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
