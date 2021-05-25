// import 'package:flutter/material.dart';
//
// class SettingPage extends StatelessWidget {
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
//               ListTile(
//                 title: Padding(
//                   padding: const EdgeInsets.only(top: 30, bottom: 30),
//                   child: Text('Language'),
//                 ),
//                 trailing: InkWell(
//                   onTap: () => Navigator.of(context).pop(),
//                   child: Icon(
//                     Icons.arrow_drop_down,
//                     color: Colors.black,
//                   ),
//                 ),
//                 onTap: () {
//                   // Navigator.push(
//                   //   context,
//                   //   MaterialPageRoute(
//                   //       builder: (context) => ChooseLanguage(),
//                   //       ),
//                   // );
//                 },
//               ),
//               ListTile(
//                 title: Padding(
//                   padding: const EdgeInsets.only(top: 30, bottom: 30),
//                   child: Text('Logout'),
//                 ),
//                 onTap: () {
//                   // Navigator.push(
//                   //   context,
//                   //   MaterialPageRoute(
//                   //       builder: (context) => LogoutScreen(),
//                   //       ),
//                   // );
//                 },
//               ),
//             ]).toList(),
//       ),
//     );
//   }
// }
