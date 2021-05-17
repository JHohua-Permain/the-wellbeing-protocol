// // This is a basic Flutter widget test.
// //
// // To perform an interaction with a widget in your test, use the WidgetTester
// // utility that Flutter provides. For example, you can send tap and scroll
// // gestures. You can also use WidgetTester to find child widgets in the widget
// // tree, read text, and verify that the values of widget properties are correct.
//
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:the_wellbeing_protocol/components/common/template_screen.dart';
// import 'package:the_wellbeing_protocol/app_themes.dart';
//
// class TestApp extends StatelessWidget {
//   final Widget testWidget;
//
//   TestApp(this.testWidget);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: createTheme(),
//       home: testWidget,
//     );
//   }
// }
//
// void main() {
//   testWidgets('Test the TemplateScreen class', (WidgetTester tester) async {
//     await tester.pumpWidget(
//       TestApp(
//         TemplateScreen(
//           title: 'Account',
//           body: Placeholder(),
//         ),
//       ),
//     );
//
//     final titleFinder = find.text('Account');
//
//     expect(titleFinder, findsOneWidget);
//   });
// }