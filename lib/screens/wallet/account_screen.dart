import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/generated/models/app_state.dart';
import 'package:the_wellbeing_protocol/widgets/template_screen.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreBuilder<AppState>(
      builder: (context, store) {
        return TemplateScreen(
          title: 'Account',
          body: _AccountBody(store),
        );
      },
    );
  }
}

class _AccountBody extends StatefulWidget {
  final Store<AppState> store;

  _AccountBody(this.store);

  @override
  _AccountBodyState createState() => _AccountBodyState();
}

class _AccountBodyState extends State<_AccountBody> {
  @override
  Widget build(BuildContext context) {
    var displayName = widget.store.state.userState.displayName;
    var walletAddress = widget.store.state.userState.walletAddress;
    var phoneNum = widget.store.state.userState.phoneNumber;
    //TODO: Implement.
    VoidCallback onNameChangeSubmit = () {};

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
            //TODO: Handle Submit.
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
          subtitle: Text(phoneNum),
        ),
        Divider(color: Colors.grey, height: 1),
      ],
    );
  }
}
