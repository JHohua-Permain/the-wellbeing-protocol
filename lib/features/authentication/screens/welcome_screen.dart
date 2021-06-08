import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_wellbeing_protocol/features/authentication/authentication_view_models.dart';

class WelcomeScreen extends StatelessWidget {
  final WelcomeViewModel vm;

  WelcomeScreen(this.vm);

  @override
  Widget build(BuildContext context) {
    //TODO: Finish layout.
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(flex: 2),
          SvgPicture.asset('assets/images/wbp_logo_b.svg'),
          Text('The Wellbeing Protocol'),
          Spacer(),
          TextButton(
            onPressed: vm.pushLoginScreen,
            child: Text(
              'Create a new wallet',
              style: TextStyle(color: Colors.black),
            ),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.all(16)),
              backgroundColor: MaterialStateProperty.all(
                Theme.of(context).primaryColor,
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: vm.pushRestoreScreen,
            child: Text(
              'Restore from Backup',
              style: TextStyle(color: Colors.black),
            ),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.all(16)),
            ),
          ),
        ],
      ),
    );
  }
}
