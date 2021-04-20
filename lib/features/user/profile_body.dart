import 'package:flutter/material.dart';

class ProfileBody extends StatefulWidget {
  ProfileBody({Key key}) : super(key: key);

  @override
  _ProfileBodyState createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  final name = TextEditingController();
  final walletAddress = TextEditingController();
  final phoneNum = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        CircleAvatar(
            radius: 40,
            backgroundColor: Colors.grey[350],
            child: Icon(
              Icons.edit_rounded,
              color: Colors.black38,
            )),
        Text(
          'Benjamin',
          style: TextStyle(color: Colors.grey[900], fontSize: 12),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Divider(
            color: Colors.grey,
            height: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: TextFormField(
            controller: name,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              labelText: "Name",
              labelStyle: TextStyle(fontSize: 12, color: Colors.grey[950]),
              suffixIcon: Icon(
                Icons.edit,
                color: Colors.grey[950],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: TextFormField(
            controller: walletAddress,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              labelText: "Wallet Address",
              labelStyle: TextStyle(fontSize: 12, color: Colors.grey[950]),
              suffixIcon: Icon(
                Icons.copy,
                size: 15,
                color: Colors.grey[950],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: TextFormField(
            controller: phoneNum,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              labelText: "Phone Number",
              labelStyle: TextStyle(fontSize: 12, color: Colors.grey[950]),
            ),
          ),
        ),
      ],
    );
  }
}
