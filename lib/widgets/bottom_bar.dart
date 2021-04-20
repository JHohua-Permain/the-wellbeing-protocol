import 'package:flutter/material.dart';
import '../features/comminity_fund.dart';
import '../features/shop.dart';

class BottamNavbar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BNavState();
  }
}

class _BNavState extends State<BottamNavbar> {
  int _currentIndex = 0;
  //final List<Widget> _children = [];
  final tabs = [
    //we need to give home screen/page class name here
    ShopPage(),
    CommunityPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: tabs[_currentIndex],
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.black))),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF292929),
        selectedFontSize: 13,
        unselectedFontSize: 13,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).bottomAppBarColor,
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/Rect.png'),
            ),
            title: Text(
              'Wallet',
              style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/Rect.png'),
            ),
            title: Text(
              'Shop',
              style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/Rect.png'),
            ),
            title: Text(
              'Community fund',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
