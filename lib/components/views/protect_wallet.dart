// import 'package:flutter/material.dart';
//
// class ProtectWallet extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: ListTile.divideTiles(context: context, tiles: [
//           ListTile(
//             leading: Icon(
//               Icons.fingerprint,
//               size: 20,
//               color: Colors.black,
//             ),
//             title: Text('Touch ID'),
//             trailing: InkWell(
//               onTap: () => Navigator.of(context).pop(),
//               // child: Padding(
//               //   padding: const EdgeInsets.all(4.0),
//               child: Icon(
//                 Icons.check,
//                 color: Colors.green,
//               ),
//             ),
//           ),
//           ListTile(
//             leading: Icon(
//               Icons.keyboard,
//               size: 20,
//               color: Colors.black,
//             ),
//             title: Text('Pincode'),
//             onTap: () {
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(
//               //       builder: (context) => CreatePincode(),
//               //       ),
//               // );
//             },
//           ),
//         ]).toList(),
//       ),
//     );
//   }
// }
