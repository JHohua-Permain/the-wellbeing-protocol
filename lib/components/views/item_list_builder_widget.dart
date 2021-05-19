import 'package:flutter/material.dart';

@deprecated
class ItemListBuilder extends StatelessWidget {
  final int numberOfItems;
  final Widget Function(BuildContext, int) itemBuilder;
  const ItemListBuilder({
    required this.numberOfItems,
    required this.itemBuilder,
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
