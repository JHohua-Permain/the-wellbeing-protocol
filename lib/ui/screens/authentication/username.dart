import 'package:flutter/material.dart';

class UsernameScreen extends StatelessWidget {
  final displayNameController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   body: Column(children: [
      // Padding(
      //   padding: EdgeInsets.only(
      //     left: 30.0,
      //     right: 30.0,
      //     bottom: 0,
      //     top: 20.0,
      //   ),
      // ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(children: <Widget>[
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
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  'This name will be shown to contacts that send\n you money to identify your account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                width: 255,
                color: Theme.of(context).canvasColor,
                child: TextFormField(
                  controller: displayNameController,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  autofocus: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0.0),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                      ),
                    ),
                    fillColor: Theme.of(context).canvasColor,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Column(
                children: [
                  Center(
                    // child: RaisedButton( onPressed: () {},),

                  ),
                  SizedBox(height: 40.0),
                ],
              )
            ]),
          ),
        ));
  }
}
