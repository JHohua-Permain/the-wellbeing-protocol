import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/common/widgets/app_scaffold.dart';
import 'package:the_wellbeing_protocol/features/hub/hub_view_models.dart';

class TransactionHistoryScreen extends StatelessWidget {
  final TransactionHistoryViewModel vm;
  final List<Widget>? transferWidgets;

  TransactionHistoryScreen(this.vm, {this.transferWidgets});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Transaction History',
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            _buildTransactionsListView(context),
          ],
        ),
      ),
    );
  }

  Widget _buildTransactionsListView(BuildContext context) {
    if (transferWidgets == null) {
      return Container();
    }

    if (transferWidgets!.isEmpty) {
      return Container(
        padding: EdgeInsets.all(20),
        child: Text(
          'No transactions',
          style: Theme.of(context).textTheme.headline6,
        ),
      );
    }

    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: vm.transfers.length,
        itemBuilder: (context, index) => Column(
          children: transferWidgets!,
        ),
        separatorBuilder: (context, int index) => Divider(
          height: 10,
          thickness: 1,
        ),
      ),
    );
  }
}
