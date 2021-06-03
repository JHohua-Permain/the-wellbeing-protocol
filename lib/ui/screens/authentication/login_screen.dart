import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/ui/view_models/authentication_view_models.dart';

class LoginScreen extends StatefulWidget {
  final LoginViewModel vm;

  LoginScreen(this.vm);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneNumController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Please enter your phone number so we can setup your account",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    // fontWeight: FontWeight.w500,
                  ),
                ),
                //TODO: Insert Button.
                Padding(
                  padding: const EdgeInsets.only(top: 25, bottom: 35, left: 75),
                  child: Text(
                    "Why do we need this?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                TextFormField(
                  controller: _phoneNumController,
                  keyboardType: TextInputType.number,
                  autofocus: true,
                  // value.isEmpty ? "Please enter mobile number" : null,
                  style: TextStyle(
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Phone number',
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1.0)),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      widget.vm.login(_phoneNumController.text.trim());
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.all(16)),
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _phoneNumController.dispose();
    super.dispose();
  }
}
