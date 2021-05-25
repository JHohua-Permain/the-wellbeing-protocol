import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/screens_redux/shop_view_models.dart';
import 'package:the_wellbeing_protocol/widgets/app_scaffold.dart';

class SelectShopScreen extends StatelessWidget {
  final SelectShopViewModel vm;

  SelectShopScreen(this.vm);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Select a Shop',
      body: ListView.builder(
        padding: EdgeInsets.only(top: 20),
        itemCount: vm.shops.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[350],
              radius: 30,
              child: Icon(
                Icons.person_rounded,
                size: 40,
                color: Colors.grey[600],
              ),
            ),
            trailing: InkWell(
              onTap: vm.pushShopScreen,
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
            title: Text(vm.shops[index].displayName),
          );
        },
      ),
    );
  }
}
