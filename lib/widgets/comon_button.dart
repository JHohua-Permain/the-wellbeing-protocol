import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String buttonName;
  final Function onButtonPressed;
  const CommonButton({
    required this.buttonName,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Material(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          color: Color(0xFF801E48),
          clipBehavior: Clip.antiAlias,
          child: MaterialButton(
              minWidth: 200.0,
              height: 50,
              color: const Color(0xFFFFAD8B),
              child: new Text(buttonName,
                  style: new TextStyle(fontSize: 16.0, color: Colors.black)),
              onPressed: () {
                onButtonPressed();
              }),
        ),
      ),
    );
  }
}
