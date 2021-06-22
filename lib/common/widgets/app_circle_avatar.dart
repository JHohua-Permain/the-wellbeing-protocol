import 'dart:typed_data';

import 'package:flutter/material.dart';

class AppCircleAvatar extends StatelessWidget {
  final Uint8List? avatar;

  const AppCircleAvatar({this.avatar});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle),
      child: _buildCircleAvatar(context),
    );
  }

  Widget? _buildCircleAvatar(BuildContext context) {
    if (avatar != null && avatar!.length > 0) {
      return CircleAvatar(backgroundImage: MemoryImage(avatar!));
    }
    return CircleAvatar(
      child: Image.asset('assets/images/anon.png'),
      backgroundColor: Colors.grey,
    );
  }
}
