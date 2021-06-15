import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/features/shop/shop_view_models.dart';
import 'package:the_wellbeing_protocol/shared/widgets/app_scaffold.dart';

class SelectShopScreen extends StatelessWidget {
  final SelectShopViewModel vm;

  SelectShopScreen(this.vm);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Select a Shop',
      isRootScreen: true,
      body: ListView.builder(
        padding: EdgeInsets.only(top: 20),
        itemCount: vm.shops.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(vm.shops[index].displayName),
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
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ),
          onTap: () {
            vm.selectShop(index);
          },
        ),
      ),
    );
  }
}
