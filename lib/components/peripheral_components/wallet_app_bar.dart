// import 'package:flutter/material.dart';
//
// class WalletAppBar extends StatelessWidget implements PreferredSizeWidget {
//   @override
//   final Size preferredSize = Size.fromHeight(kToolbarHeight);
//   final VoidCallback toTransactionHistory;
//
//   WalletAppBar(this.toTransactionHistory);
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       automaticallyImplyLeading: false,
//       backgroundColor: const Color(0xFFFFAD8B),
//       leading: InkWell(
//         child: Icon(Icons.menu),
//         onTap: () {
//           Scaffold.of(context).openDrawer();
//         },
//       ),
//       actions: [
//         InkWell(
//           child: Text("View Transactions"),
//           onTap: toTransactionHistory,
//         ),
//       ],
//       bottom: PreferredSize(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: [
//             Text(
//               //TODO Get from model
//               '50.00',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 25,
//                 color: Colors.black,
//               ),
//             ),
//             Text(
//               //TODO Get from model
//               ' CAN',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16,
//                 color: Colors.black,
//               ),
//             ),
//             Spacer(),
//             InkWell(
//               child: Image.asset('assets/images/QRCode.png'),
//               //TODO
//               onTap: () {
//                 throw UnimplementedError();
//               },
//             ),
//           ],
//         ),
//         preferredSize: preferredSize,
//       ),
//     );
//   }
// }