import 'package:flutter/material.dart';
import '../../models/account_model.dart';

class AppDrawer extends StatelessWidget {
  final AccountModel account;
  final VoidCallback toAccount;

  AppDrawer(this.account, this.toAccount);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(height: 100),
          ListTile(
            onTap: toAccount,
            title: Text(
              account.name,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[800],
              ),
            ),
            subtitle: Text(account.publicAddress),
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