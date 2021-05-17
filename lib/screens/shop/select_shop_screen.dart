import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/widgets/template_screen.dart';

//TODO
class SelectShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //VoidCallback pushShop = () => AutoRouter.of(context).push;

    return TemplateScreen(
      title: 'Select a Shop',
      body: Container(
        child: ListView.builder(
          padding: EdgeInsets.only(top: 20),
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
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
                  onTap: () => Navigator.of(context).pop(),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ),
                title: Text('Fruit & Vegetable Co-op'));
          },
        ),
      ),
    );
  }
}