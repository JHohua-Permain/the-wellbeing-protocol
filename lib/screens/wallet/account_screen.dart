import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:the_wellbeing_protocol/generated/models/app_state.dart';
import 'package:the_wellbeing_protocol/generated/models/user_state.dart';
import 'package:the_wellbeing_protocol/widgets/template_screen.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, UserState>(
      converter: (store) => store.state.userState,
      builder: (context, userState) {
        var displayName = userState.displayName;
        var walletAddress = userState.walletAddress ?? 'N/A';
        var phoneNum = userState.phoneNumber ?? 'N/A';

        return TemplateScreen(
          title: 'Account',
          body: _buildBody(context, displayName, walletAddress, phoneNum),
        );
      },
    );
  }

  Widget _buildBody(
    BuildContext context,
    String displayName,
    String walletAddress,
    String phoneNum,
  ) {
    return Column(
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
          displayName,
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
            initialValue: displayName,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
          ),
          trailing: Icon(
            Icons.edit,
            color: Colors.grey[950],
          ),
        ),
        Divider(color: Colors.grey, height: 1),
        ListTile(
          contentPadding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          title: Text(
            'Wallet Address',
            style: TextStyle(fontSize: 12, color: Colors.grey[950]),
          ),
          subtitle: Text(walletAddress),
          trailing: Icon(
            Icons.copy,
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
          subtitle: Text(phoneNum),
        ),
        Divider(color: Colors.grey, height: 1),
      ],
    );
  }
}