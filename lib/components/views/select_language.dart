// import 'package:flutter/material.dart';
//
// class SelectLanguage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: ListTile.divideTiles(
//             //          <-- ListTile.divideTiles
//             context: context,
//             tiles: [
//               ListTile(
//                 title: Padding(
//                   padding: const EdgeInsets.only(top: 30, bottom: 30),
//                   child: Text('About'),
//                 ),
//                 onTap: () {
//                   // Navigator.push(
//                   //   context,
//                   //   MaterialPageRoute(
//                   //       builder: (context) => AboutView(),
//                   //       ),
//                   // );
//                 },
//               ),
//               ListTile(
//                 title: Padding(
//                   padding: const EdgeInsets.only(top: 30, bottom: 30),
//                   child: Text('Protect your wallet'),
//                 ),
//                 onTap: () {
//                   // Navigator.push(
//                   //   context,
//                   //   MaterialPageRoute(
//                   //       builder: (context) => ProtectYourWallet(),
//                   //       ),
//                   // );
//                 },
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(3),
//                 child: Divider(
//                   height: 5,
//                 ),
//               ),
//               ListTile(
//                 title: Text('Language'),
//                 trailing: InkWell(
//                   onTap: () => Navigator.of(context).pop(),
//                   child: Icon(
//                     Icons.arrow_drop_up,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//               ListTile(
//                 title: Text('United State'),
//               ),
//               ListTile(
//                 title: Text('Espana'),
//               ),
//               ListTile(
//                 title: Text('Brasil'),
//               ),
//             ]).toList(),
//       ),
//     );
//   }
// }
