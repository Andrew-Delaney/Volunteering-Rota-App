import 'package:flutter/material.dart';
import 'package:hh_rota/widgets/app_bar.dart';

class VolunteerForm extends StatelessWidget {
  VolunteerForm({
    Key key,
    this.username
  }) : super(key: key);

  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: HHAppBar(username: username),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Test Page')
          ],
        ),
      ),

    );
  }
}
