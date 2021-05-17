import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/widgets/template_screen.dart';

class TransactionHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TemplateScreen(
      title: 'Transaction History',
      body: Center(child: Text("Hello Transaction History!")),
    );
  }
}