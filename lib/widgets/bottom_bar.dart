import 'package:flutter/material.dart';

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
    Center(
      child: Text('Wallet'),
    ),
    Center(
      child: Text('Shop'),
    ),
    Center(
      child: Text('Community Fund'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
      ),
      // body: _children[_currentIndex],
      // body: Container(),
      body: tabs[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box),
            title: Text('Wallet'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            title: Text('Shop'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_sharp),
            title: Text('Community Fund'),
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
