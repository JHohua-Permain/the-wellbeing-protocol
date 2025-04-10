import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final String displayName;
  final String walletAddress;
  final VoidCallback pushAccountScreen;
  final VoidCallback pushBackupWalletScreen;
  final VoidCallback pushSettingsScreen;
  final VoidCallback logoutUser;

  AppDrawer({
    required this.displayName,
    required this.walletAddress,
    required this.pushAccountScreen,
    required this.pushBackupWalletScreen,
    required this.pushSettingsScreen,
    required this.logoutUser,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(fontSize: 18, color: Colors.grey[800]);

    return Drawer(
      child: Column(
        children: [
          const SizedBox(height: 100),
          ListTile(
            onTap: pushAccountScreen,
            title: Text(
              displayName,
              style: TextStyle(fontSize: 16, color: Colors.grey[800]),
            ),
            subtitle: Text(walletAddress),

            //TODO: Inject an AppCircleAvatar.
            leading: CircleAvatar(
              backgroundColor: Colors.grey[350],
              radius: 40,
              child: Icon(
                Icons.person_rounded,
                size: 50,
                color: Colors.grey[600],
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          const Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: const Divider(
              height: 5,
              thickness: 3,
              color: Colors.black,
            ),
          ),
          ListTile(
            onTap: pushBackupWalletScreen,
            leading: const Icon(Icons.settings_backup_restore_outlined),
            trailing: const Icon(Icons.info_outline_rounded),
            title: Text("Backup", style: textStyle),
          ),
          ListTile(
            onTap: pushSettingsScreen,
            leading: const Icon(Icons.settings_applications_outlined),
            title: Text("Settings", style: textStyle),
          ),
          Spacer(),
          ListTile(
            onTap: logoutUser,
            leading: const Icon(Icons.logout),
            title: Text("Logout", style: textStyle),
          ),
        ],
      ),
    );
  }
}
