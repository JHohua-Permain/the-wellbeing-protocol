import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/common/widgets/app_circle_avatar.dart';
import 'package:the_wellbeing_protocol/common/widgets/app_scaffold.dart';
import 'package:the_wellbeing_protocol/features/hub/hub_view_models.dart';

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
          leading: AppCircleAvatar(),
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
