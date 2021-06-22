import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/common/widgets/common_button.dart';
import 'package:the_wellbeing_protocol/features/authentication/authentication_view_models.dart';

class SetUsernameScreen extends StatelessWidget {
  final SetUsernameViewModel vm;
  final TextEditingController _displayNameController = TextEditingController();

  SetUsernameScreen(this.vm);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/images/username.png',
                  width: 95,
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'Pick your display name',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    'This name will be shown to contacts that send\n you money to identify your account',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  width: 255,
                  color: Theme.of(context).canvasColor,
                  child: TextFormField(
                    controller: _displayNameController,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                    autofocus: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0.0),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(width: 2),
                      ),
                      fillColor: Theme.of(context).canvasColor,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 2),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 2),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Column(
                  children: [
                    Center(
                      child: CommonButton(
                        label: 'Next',
                        onPressed: () {
                          vm.setDisplayName(_displayNameController.value.text);
                        },
                      ),
                    ),
                    SizedBox(height: 40.0),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
