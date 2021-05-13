import 'package:flutter/material.dart';

class WalletBackupWord extends StatelessWidget {
  final TextEditingController wordController1;
  final TextEditingController wordController2;
  final TextEditingController wordController3;

  WalletBackupWord({String word1, String word2, String word3})
      : wordController1 = TextEditingController(text: word1),
        wordController2 = TextEditingController(text: word2),
        wordController3 = TextEditingController(text: word3);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
            child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
          child: Text(
            'Please write down words\n 5,6,7',
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
            padding:
                const EdgeInsets.only(left: 60, right: 60, top: 30, bottom: 40),
            child: Container(
              height: 236,
              child: Column(children: [
                TextFormField(
                  controller: wordController1,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black, width: 10.0)),
                    labelText: "Word 5",
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextFormField(
                  controller: wordController2,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    labelText: "Word 6",
                    labelStyle: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
                TextFormField(
                  controller: wordController3,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    labelText: "Word 7",
                    labelStyle: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ]),
            )),
        Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Material(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              color: Color(0xFF801E48),
              clipBehavior: Clip.antiAlias,
              child: MaterialButton(
                minWidth: 218.0,
                height: 50,
                color: const Color(0xFFFFAD8B),
                child: new Text('Next',
                    style: new TextStyle(fontSize: 16.0, color: Colors.black)),
                onPressed: () {},
              ),
            )
          ]),
        ),
      ],
    )));
  }
}
