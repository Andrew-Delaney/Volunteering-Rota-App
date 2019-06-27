import 'package:flutter/material.dart';
import 'package:hh_rota/widgets/app_bar.dart';

class VolunteerForm extends StatefulWidget {
  final String username;

  VolunteerForm(this.username);

  @override
  _VolunteerFormState createState() => _VolunteerFormState(username);
}

class _VolunteerFormState extends State<VolunteerForm> {
  String volunteerRole;

  _VolunteerFormState(String username);

  @override
  Widget build(BuildContext context) {

    List<String> volunteerRoles = [
      'Kitchen',
      'Sandwhiches',
      'Soup',
      'Tea & Coffee'
    ];

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: HHAppBar(username: widget.username),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton<String>(
              value: volunteerRole,
              onChanged: (String newRole) {
                setState(() {
                  volunteerRole = newRole;
                });
              },
              items: volunteerRoles
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            )
          ],
        ),
      ),

    );
  }
}


