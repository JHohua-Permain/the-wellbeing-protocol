import 'package:flutter/material.dart';

class ItemListBuilder extends StatelessWidget {
  final int numberOfItems;
  final Function itemBuilder;
  const ItemListBuilder({
    this.numberOfItems,
    this.itemBuilder,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: numberOfItems,
        itemBuilder: itemBuilder,
        separatorBuilder: (context, int index) {
          return Divider(
            height: 10,
            thickness: 1,
          );
        },
      ),
    );
  }
}
