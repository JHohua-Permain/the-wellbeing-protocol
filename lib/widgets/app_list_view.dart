import 'package:flutter/material.dart';
import 'package:the_wellbeing_protocol/generated/models/community_entity.dart';
import 'package:the_wellbeing_protocol/widgets/app_circle_avatar.dart';

//TODO
typedef TrailingWidgetBuilder<E extends CommunityEntity> = Widget Function(
    E entity);

class AppListView<E extends CommunityEntity> extends StatelessWidget {
  final List<E> entityList;
  final TrailingWidgetBuilder<E> trailingWidgetBuilder;
  final VoidCallback? onListTileTap;

  AppListView({
    required this.entityList,
    required this.trailingWidgetBuilder,
    this.onListTileTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: entityList.length,
        itemBuilder: (context, index) {
          E entity = entityList[index];
          String displayName = entity.displayName;
          Widget trailing = trailingWidgetBuilder(entity);

          return ListTile(
            title: Text(displayName),
            trailing: trailing,
            leading: AppCircleAvatar(avatar: entity.avatar),
            onTap: onListTileTap,
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 10,
            thickness: 1,
          );
        },
      ),
    );
  }
}