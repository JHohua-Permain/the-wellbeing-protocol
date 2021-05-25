// import 'package:flutter/material.dart';
// import 'package:the_wellbeing_protocol/components/views/success.dart';
// import 'package:the_wellbeing_protocol/components/views/review_transfer_widget.dart';
// import '../../screens/community/community_fund_screen.dart';
// import '../../widgets/template_screen.dart';
//
// @deprecated
// class ReviewContributerTransfer extends StatelessWidget {
//   final String confirmAmount;
//   final Contributer contributer;
//   const ReviewContributerTransfer({required this.confirmAmount, required this.contributer});
//
//   Row contributerRow() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//           ),
//           child: CircleAvatar(
//             child: Image.asset('assets/images/anom.png'),
//             backgroundColor: Colors.grey,
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(contributer.name),
//             ],
//           ),
//         )
//       ],
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ReviewTransferWidget(
//       confirmAmount: confirmAmount,
//       itemRow: contributerRow(),
//       passedButtonName: 'Send',
//       buttonFunction: () {},
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