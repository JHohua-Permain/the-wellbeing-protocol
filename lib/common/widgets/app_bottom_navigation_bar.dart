import 'package:flutter/material.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged onTap;

  AppBottomNavigationBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border(top: BorderSide(width: 2))),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        items: [
          _buildBottomNavigationBarItem(
            'Wallet',
            Icons.home,
          ),
          _buildBottomNavigationBarItem(
            'Shop',
            Icons.shopping_cart,
          ),
          _buildBottomNavigationBarItem(
            'Community Fund',
            Icons.people,
          ),
        ],
      ),
    );
  }

  ///Helper method used to build the bottom navigation bar items.
  BottomNavigationBarItem _buildBottomNavigationBarItem(
    String label,
    IconData icon,
  ) {
    return BottomNavigationBarItem(
      label: label,
      icon: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Icon(icon),
      ),
    );
  }
}
