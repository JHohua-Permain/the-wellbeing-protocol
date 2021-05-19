import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:the_wellbeing_protocol/generated/models/app_state.dart';
import 'package:the_wellbeing_protocol/generated/models/community_entity.dart';
import 'package:the_wellbeing_protocol/redux/actions/community_actions.dart';
import 'package:the_wellbeing_protocol/widgets/template_screen.dart';

class SelectShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreBuilder<AppState>(
      onInit: (store) {
        store.dispatch(getShops());
      },
      builder: (context, store) {
        return TemplateScreen(
          title: 'Select a Shop',
          body: Container(
            child: _buildBody(context, store),
          ),
        );
      },
    );
  }

  Widget _buildBody(BuildContext context, Store<AppState> store) {
    List<CommunityShop> shops = store.state.community.shops;
    //TODO: Implement.
    VoidCallback pushShopPage = () {};

    return ListView.builder(
      padding: EdgeInsets.only(top: 20),
      itemCount: shops.length,
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
            onTap: pushShopPage,
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ),
          title: Text(shops[index].displayName),
        );
      },
    );
  }
}
