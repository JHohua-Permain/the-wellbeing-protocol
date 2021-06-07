import 'package:flutter/material.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:the_wellbeing_protocol/ui/view_models/authentication_view_models.dart';

class VerificationScreen extends StatefulWidget {
  final VerificationViewModel vm;

  VerificationScreen(this.vm);

  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final TextEditingController _codeController = TextEditingController();
  // bool _retype = false;
  // bool _showError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // SizedBox(
                //   height: 150,
                // ),

                Text(
                  'We just sent a message to\n ${widget.vm.phoneNum}',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text(
                    'Please enter 6-digit code from\n that message here',
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 50),
                Theme(
                  data: ThemeData(
                      hintColor: Theme.of(context).scaffoldBackgroundColor),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40, right: 40),
                    child: Container(
                      child: PinInputTextField(
                        pinLength: 6,
                        decoration: UnderlineDecoration(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                            hintTextStyle:
                                TextStyle(fontWeight: FontWeight.normal),
                            // obscureStyle:
                            //     ObscureStyle(isTextObscure: false),
                            colorBuilder: PinListenColorBuilder(
                                Colors.black, Colors.black)),
                        controller: _codeController,
                        autoFocus: true,
                        // onChanged: _onChanged,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 35, left: 30, right: 30, bottom: 15),
                  child: Container(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () =>
                          widget.vm.verify(_codeController.text.trim()),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.all(16)),
                        backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).primaryColor,
                        ),
                      ),
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Didn\'t get the message? - Resend Code',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10),
                  ),
                  //TODO: Put button.
                )
              ]),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  // void _onChanged(String pin) {
  //   if (pin.length == 6 && !_retype) {
  //     _codeController.text = '';
  //     setState(() {
  //       _retype = true;
  //     });
  //   } else if (pin.length == 6 && retype) {
  //     if (pin == lastPincode) {
  //       widget.onSuccess();
  //     }
  //   } else {
  //     if (!_showError) {
  //       SnackBar(
  //         content: Text(''),
  //         action: SnackBarAction(label: 'Wrong Code', onPressed: () {}),
  //       );
  //     }
  //     Future.delayed(Duration(milliseconds: 2500), () {
  //       setState(() {
  //         showError = false;
  //       });
  //     });
  //   }
  // }
}
