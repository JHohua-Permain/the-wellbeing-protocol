import 'package:flutter/material.dart';
import 'general_screen.dart';
import 'top_bar.dart';
import '../features/user/profile_body.dart';

class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => GeneralScreen(body: ProfileBody(), appBarTitle: "Account")));
            },
            title: Text("Ddjm"),
            subtitle: Text("0xadf61.....dsds"),
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 30,
              child: Icon(Icons.person),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
            ),
          ),
          Divider(
            height: 5,
          ),
          ListTile(
            leading: Icon(Icons.sync),
            title: Text(
              "Switch Community",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}