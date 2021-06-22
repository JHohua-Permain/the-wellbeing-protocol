import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/common/widgets/app_scaffold.dart';
import 'package:the_wellbeing_protocol/features/hub/hub_view_models.dart';

class ShopScreen extends StatelessWidget {
  final ShopViewModel vm;

  ShopScreen(this.vm);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: '${vm.shop.displayName}',
      body: Container(
        child: ListView.builder(
          padding: EdgeInsets.only(top: 20),
          itemCount: vm.shop.items.length,
          itemBuilder: (context, index) => ListTile(
            title: Text('${vm.shopItems[index].name}'),
            onTap: () {
              vm.selectItem(index);
            },
            // TODO: Get from Shop Item.
            leading: CircleAvatar(
              backgroundColor: Colors.grey[350],
              radius: 30,
              child: Icon(
                Icons.person_rounded,
                size: 20,
                color: Colors.grey[600],
              ),
            ),
            trailing: Wrap(
              spacing: 12,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: Text(
                    '${vm.shopItems[index].cost} ${vm.tokenSymbol}',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
