import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/features/wallet/wallet_view_models.dart';
import 'package:the_wellbeing_protocol/shared/widgets/app_scaffold.dart';

class SettingsScreen extends StatelessWidget {
  final SettingsViewModel vm;

  SettingsScreen(this.vm);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Settings',
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            // ListTile(
            //   title: Padding(
            //     padding: const EdgeInsets.only(top: 30, bottom: 30),
            //     child: Text('About'),
            //   ),
            //   onTap: vm.pushAboutScreen,
            // ),
            // ListTile(
            //   title: Padding(
            //     padding: const EdgeInsets.only(top: 30, bottom: 30),
            //     child: Text('Protect your wallet'),
            //   ),
            //   onTap: vm.pushProtectWalletScreen,
            // ),
            // ListTile(
            //   title: Padding(
            //     padding: const EdgeInsets.only(top: 30, bottom: 30),
            //     child: Text('Language'),
            //   ),
            //   trailing: InkWell(
            //     onTap: () => Navigator.of(context).pop(),
            //     child: Icon(
            //       Icons.arrow_drop_down,
            //       color: Colors.black,
            //     ),
            //   ),
            //   onTap: () {},
            // ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 30),
                child: Text('Logout'),
              ),
              onTap: vm.logoutUser,
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 30),
                child: Text('Clear Data'),
              ),
              onTap: vm.clearData,
            ),
          ],
        ).toList(),
      ),
    );
  }
}

class _SelectLanguageDropDownMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        context: context,
        tiles: [
          ListTile(
            title: Text('Language'),
            trailing: InkWell(
              onTap: () => Navigator.of(context).pop(),
              child: Icon(
                Icons.arrow_drop_up,
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            title: Text('United State'),
          ),
          ListTile(
            title: Text('Espana'),
          ),
          ListTile(
            title: Text('Brasil'),
          ),
        ],
      ).toList(),
    );
  }
}
