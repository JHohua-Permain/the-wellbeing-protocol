import 'package:flutter/material.dart';

@deprecated
class AccountView extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController publicAddressController;
  final TextEditingController phoneNumController;

  AccountView({String? name, String? publicAddress, String? phoneNum})
      : nameController = TextEditingController(text: name),
        publicAddressController = TextEditingController(text: publicAddress),
        phoneNumController = TextEditingController(text: phoneNum);

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
          ),
        ),
        Text(
          nameController.value.text,
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
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: TextFormField(
            controller: nameController,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              labelText: "Name",
              labelStyle: TextStyle(
                fontSize: 12,
                color: Colors.grey[950],
              ),
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
            controller: publicAddressController,
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
            controller: phoneNumController,
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