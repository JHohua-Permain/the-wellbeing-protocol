import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecurityScreen extends StatefulWidget {
  @override
  _SecurityScreenState createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  @override
  void initState() {
    // Segment.screen(screenName: '/choose-lock-method-screen');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Center(child: SvgPicture.asset('assets/images/lock.svg')),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        'Please choose how you prefer to protect your\n wallet by selectinh the followinh methods',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFF888888),
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ]),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          height: 60,
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          width: MediaQuery.of(context).size.width * .8,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(11.0)),
                            shape: BoxShape.rectangle,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                  child: Row(children: <Widget>[
                                    Expanded(
                                        child: SvgPicture.asset('assets/images/fp.svg')),
                                    // Image.asset(
                                    //   // 'assets/images/${BiometricAuth.faceID == _biometricType ? 'face_id' : 'fingerprint'}.svg'),
                                    //   'assets/images/new.png',
                                    // ),
                                    Text('Touch ID',
                                        style: TextStyle(
                                          fontSize: 18,
                                          // color: Theme.of(context)
                                          //     .colorScheme
                                          //     .onSurface),
                                        ))
                                  ])),
                              SizedBox(
                                width: 82,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.asset(
                                    'assets/images/info_black.svg',
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    'Recommended',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Theme.of(context).colorScheme.onSurface),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        // onTap: () {},

                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 60,
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          width: MediaQuery.of(context).size.width * .8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(11.0)),
                            color: Color(0xFFF7F7F7),
                            shape: BoxShape.rectangle,
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SvgPicture.asset('assets/images/pincode.svg',
                                    color: Colors.black),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Pincode',
                                    style: TextStyle(fontSize: 18, color: Colors.black))
                              ]),
                        ),
                        // onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => SetUpPinCodeScreen(
                        //       onSuccess: () {
                        //         ExtendedNavigator.root.popUntilRoot();
                        //         ExtendedNavigator.root
                        //             .replace(Routes.homeScreen);
                        SizedBox(
                          height: 15,
                        ),
                      ]),
                ])));
  }
}
