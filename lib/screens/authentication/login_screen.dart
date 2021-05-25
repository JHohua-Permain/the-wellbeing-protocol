import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/screens_redux/authentication_view_models.dart';

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
    //TODO: Finish Visuals.
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _phoneNumController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[100],
                    hintText: "Mobile Number",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Colors.grey[200]!)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: Colors.grey[300]!)),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () =>
                        widget.vm.login(_phoneNumController.text.trim()),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.all(16)),
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.white),
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
