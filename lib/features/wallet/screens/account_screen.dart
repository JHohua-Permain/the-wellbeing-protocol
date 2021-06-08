import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/features/wallet/wallet_view_models.dart';
import 'package:the_wellbeing_protocol/shared/widgets/app_scaffold.dart';

class AccountScreen extends StatefulWidget {
  final AccountViewModel vm;

  AccountScreen(this.vm);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  late final TextEditingController _displayNameController;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Account',
      body: Column(
        children: [
          SizedBox(height: 10),
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.grey[350],
            child: Icon(
              Icons.edit_rounded,
              color: Colors.black38,
            ),
          ),
          Text(
            widget.vm.displayName,
            style: TextStyle(
              color: Colors.grey[900],
              fontSize: 12,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Divider(
              color: Colors.grey,
              height: 1,
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            title: Text(
              'Name',
              style: TextStyle(fontSize: 12, color: Colors.grey[950]),
            ),
            subtitle: TextFormField(
              controller: _displayNameController,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () => widget.vm
                  .handleDisplayNameChange(_displayNameController.value.text),
              icon: Icon(
                Icons.edit,
                color: Colors.grey[950],
              ),
            ),
          ),
          Divider(color: Colors.grey, height: 1),
          ListTile(
            contentPadding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            title: Text(
              'Wallet Address',
              style: TextStyle(fontSize: 12, color: Colors.grey[950]),
            ),
            subtitle: Text(widget.vm.walletAddress),
            trailing: Icon(
              Icons.copy,
              size: 15,
              color: Colors.grey[950],
            ),
          ),
          Divider(color: Colors.grey, height: 1),
          ListTile(
            contentPadding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            title: Text(
              'Phone Number',
              style: TextStyle(fontSize: 12, color: Colors.grey[950]),
            ),
            subtitle: Text(widget.vm.primaryContactNum),
          ),
          Divider(color: Colors.grey, height: 1),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _displayNameController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _displayNameController = TextEditingController(text: widget.vm.displayName);
  }
}
