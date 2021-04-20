import 'package:flutter/material.dart';

class ProfileBody extends StatefulWidget {
  ProfileBody({Key key}) : super(key: key);

  @override
  _ProfileBodyState createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        CircleAvatar(radius: 50, child: Icon(Icons.person)),
        Divider(
          color: Colors.grey,
          height: 1,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: "Name",
              suffixIcon: Icon(Icons.edit),
            ),
          ),
        ),
      ],
    );
  }
}
