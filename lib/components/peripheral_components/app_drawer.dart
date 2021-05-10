import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final String name;
  final String publicAddress;

  AppDrawer({this.name, this.publicAddress});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(height: 100),
          ListTile(
            onTap: () {
              // Navigator.pop(context);
              Navigator.of(context).pushNamed('/account');
            },
            title: Text(
              name,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[800],
              ),
            ),
            subtitle: Text(publicAddress),
            leading: CircleAvatar(
              backgroundColor: Colors.grey[350],
              radius: 40,
              child: Icon(
                Icons.person_rounded,
                size: 50,
                color: Colors.grey[600],
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Divider(
              height: 5,
              thickness: 3,
              color: Colors.black,
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings_backup_restore_outlined),
            trailing: Icon(Icons.info_outline_rounded),
            title: Text(
              "Backup",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[800],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings_applications_outlined),
            title: Text(
              "Settings",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[800],
              ),
            ),
          )
        ],
      ),
    );
  }
}
