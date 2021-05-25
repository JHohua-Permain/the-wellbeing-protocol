// import 'package:flutter/material.dart';
//
// @deprecated
// class ShopDetail extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _ShopDetail();
//   }
// }
//
// class _ShopDetail extends State<ShopDetail> {
//   String itemValue = '';
//   String shopVlaue = '';
//   List listItem = ["1", "2", "3"];
//   List listShop = ["ABC", "DEF", "GEH"];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(
//             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//           Container(
//             child: Padding(
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 children: <Widget>[
//                   Row(children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 10),
//                       child: Text('Item'),
//                     )
//                   ]),
//                   Row(children: <Widget>[
//                     Text(
//                       'Fruit & Veg Box',
//                       style:
//                           TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
//                     ),
//                     Spacer(),
//                     Column(
//                       children: <Widget>[
//                         Text(
//                           '12 CAN',
//                           style: TextStyle(
//                               fontSize: 18, fontWeight: FontWeight.w700),
//                         )
//                       ],
//                     )
//                   ])
//                 ],
//               ),
//             ),
//           ),
//           Container(
//               child: Padding(
//                   padding: const EdgeInsets.all(16),
//                   child: Column(children: <Widget>[
//                     Row(children: <Widget>[
//                       Padding(
//                         padding: const EdgeInsets.only(bottom: 16),
//                         child: Text('How many', style: TextStyle(fontSize: 18)),
//                       )
//                     ]),
//                     Column(children: <Widget>[
//                       Container(
//                         padding: EdgeInsets.only(left: 16, right: 16),
//                         decoration: BoxDecoration(
//                           border: Border.all(color: Colors.black, width: 1),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         child: DropdownButton(
//                           hint: Text("1"),
//                           icon: Icon(Icons.arrow_drop_down),
//                           iconSize: 36,
//                           isExpanded: true,
//                           underline: SizedBox(),
//                           value: itemValue,
//                           onChanged: (newValue) {
//                             setState(() {
//                               itemValue = newValue.toString();
//                             });
//                           },
//                           items: listItem.map((itemValue) {
//                             return DropdownMenuItem(
//                               value: itemValue,
//                               child: Text(itemValue),
//                             );
//                           }).toList(),
//                         ),
//                       )
//                     ]),
//                     Row(children: <Widget>[
//                       Padding(
//                         padding: const EdgeInsets.only(top: 16, bottom: 16),
//                         child: Text('Where would you like to pick it up?',
//                             style: TextStyle(fontSize: 18)),
//                       )
//                     ]),
//                     Column(children: <Widget>[
//                       Container(
//                         padding: EdgeInsets.only(left: 16, right: 16),
//                         decoration: BoxDecoration(
//                           border: Border.all(color: Colors.black, width: 1),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         child: DropdownButton(
//                           hint: Text("ABC"),
//                           icon: Icon(Icons.arrow_drop_down),
//                           iconSize: 36,
//                           isExpanded: true,
//                           underline: SizedBox(),
//                           value: shopVlaue,
//                           onChanged: (newValue) {
//                             setState(() {
//                               shopVlaue = newValue.toString();
//                             });
//                           },
//                           items: listShop.map((shopVlaue) {
//                             return DropdownMenuItem(
//                               value: shopVlaue,
//                               child: Text(shopVlaue),
//                             );
//                           }).toList(),
//                         ),
//                       )
//                     ]),
//                   ]))),
//           Container(
//               padding: EdgeInsets.only(top: 93),
//               // width: double.infinity,
//               // alignment: Alignment.center,
//               child: Column(children: <Widget>[
//                 Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Padding(
//                         padding: EdgeInsets.all(8.0),
//                         child: Text(
//                           'Total:',
//                           style: TextStyle(fontSize: 16),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.all(8.0),
//                         child: Text(
//                           '12 CAN',
//                           style: TextStyle(
//                               fontSize: 24, fontWeight: FontWeight.w700),
//                         ),
//                       )
//                     ]),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.only(top: 34),
//                       child: Container(
//                           width: 218,
//                           height: 43,
//                           child: ElevatedButton(
//                             onPressed: () {},
//                             child: Text(
//                               "Continue",
//                               style:
//                                   TextStyle(color: Colors.black, fontSize: 16),
//                             ),
//                             style: ElevatedButton.styleFrom(
//                                 primary: const Color(0xFFFFAD8B),
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(11),
//                                 )),
//                           )),
//                     )
//                   ],
//                 )
//               ])),
//         ]));
//   }
// }
