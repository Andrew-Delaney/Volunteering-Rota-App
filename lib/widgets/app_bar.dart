import 'package:flutter/material.dart';

class HHAppBar extends StatelessWidget with PreferredSizeWidget {
  HHAppBar({
    Key key,
    this.username
  }) : super(key: key);

  final String username;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(username),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print("Menu Pressed");
          },
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
