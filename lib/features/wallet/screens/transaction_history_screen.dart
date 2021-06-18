import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/features/wallet/wallet_view_models.dart';
import 'package:the_wellbeing_protocol/shared/widgets/app_circle_avatar.dart';
import 'package:the_wellbeing_protocol/shared/widgets/app_scaffold.dart';

class TransactionHistoryScreen extends StatelessWidget {
  final TransactionHistoryViewModel vm;

  TransactionHistoryScreen(this.vm);

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
    if (vm.transfers.length == 0) {
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
          children: [
            ListTile(
              // TODO: Properly.
              title: Text(vm.transfers[index].to),
              trailing: Text(vm.transfers[index].value.toString()),
              leading: AppCircleAvatar(),
              onTap: () {},
            ),
          ],
        ),
        separatorBuilder: (context, int index) => Divider(
          height: 10,
          thickness: 1,
        ),
      ),
    );
  }
}


