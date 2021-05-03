import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/components/components.dart';

ValueNotifier<int> globalCurrentIndex = ValueNotifier<int>(0);

class AppBottomNavigationBar extends StatefulWidget {
  final bool fromAnyOtherPage;
  AppBottomNavigationBar({this.fromAnyOtherPage});

  @override
  _AppBottomNavigationBarState createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border(top: BorderSide(width: 2))),
      child: BottomNavigationBar(
        currentIndex: globalCurrentIndex.value,
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
          if ((widget.fromAnyOtherPage ?? false)) {
            //if null or false
            Navigator.pop(context);
            //Navigator.pushNamed(context, globalCurrentIndex.value.toString());
          }
          setState(() {
            globalCurrentIndex.value = index;
          });
          // switch (index) {
          //   case 0:
          //     Navigator.of(context).pushReplacementNamed('/');
          //     break;
          //   case 1:
          //     Navigator.of(context).pushReplacementNamed('/shop');
          //     break;
          //   case 2:
          //     Navigator.of(context).pushReplacementNamed('/community/fund');
          //     break;
          // }
        },
      ),
    );
  }
}
