// import 'package:flutter/material.dart';
// import 'package:the_wellbeing_protocol/components/views/review_contributer_transfer.dart';
// import 'package:the_wellbeing_protocol/screens/community/community_fund_screen.dart';
// import 'package:the_wellbeing_protocol/widgets/common_button.dart';
// import 'package:the_wellbeing_protocol/components/views/numeric_keyboard_widget.dart';
//
// import '../../widgets/template_screen.dart';
//
// @deprecated
// class SendToCommunityFund extends StatefulWidget {
//   final Contributer contributerPassed;
//
//   const SendToCommunityFund({required this.contributerPassed});
//
//   @override
//   _SendToCommunityFundState createState() => _SendToCommunityFundState();
// }
//
// class _SendToCommunityFundState extends State<SendToCommunityFund> {
//   String amountText = "";
//
//   ListTile itemTile() {
//     return ListTile(
//       title: Text(widget.contributerPassed.name),
//       leading: Container(
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//         ),
//         child: CircleAvatar(
//           child: Image.asset('assets/images/anom.png'),
//           backgroundColor: Colors.grey,
//         ),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Text('How much?'),
//           ),
//           NumericKeyboardWidget(onTap: (s) {
//             setState(() {
//               // print('s is $s');
//               amountText = s;
//               // print('amountText is $amountText');
//             });
//           }),
//           CommonButton(
//               label: 'Continue',
//               onPressed: () {}),
//         ],
//       ),
//     );
//   }
// }
//
// class Contributer extends StatelessWidget {
//   final String name;
//   final String amount;
//   const Contributer({required this.amount, required this.name});
//
//   @override
//   Widget build(BuildContext context) {
//     throw UnimplementedError();
//   }
// }