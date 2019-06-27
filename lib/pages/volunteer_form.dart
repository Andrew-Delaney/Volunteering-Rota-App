import 'package:flutter/material.dart';
import 'package:hh_rota/utils/styles.dart';
import 'package:hh_rota/widgets/app_bar.dart';

class VolunteerForm extends StatefulWidget {
  final String username;

  VolunteerForm(this.username);

  @override
  _VolunteerFormState createState() => _VolunteerFormState(username);
}

class _VolunteerFormState extends State<VolunteerForm> {
  String volunteerRole;
  bool repeatEventForAllMondays = false;
  bool repeatEventForAllTuesdays = false;
  bool repeatEventForAllThursdays = false;

  _VolunteerFormState(String username);

  @override
  Widget build(BuildContext context) {
    List<String> volunteerRoles = [
      'Kitchen',
      'Sandwiches',
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
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.black45, width: 2.0)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
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
                                child: Text(
                                  value,
                                  style: TextStyle(
                                      fontSize: Styles.fontSizeLargest),
                                ),
                              );
                            }).toList(),
                            iconSize: Styles.iconSizeLarge,
                            hint: Text(
                              'Select a role',
                              style:
                                  TextStyle(fontSize: Styles.fontSizeLargest),
                            ),
                          ),
                        )))
              ],
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  CheckboxListTile(
                      title: Text('Repeat for all Mondays?'),
                      value: repeatEventForAllMondays,
                      onChanged: (bool val) {
                        setState(() {
                          repeatEventForAllMondays = val;
                        });
                      }),
                  CheckboxListTile(
                      title: Text('Repeat for all Tuesdays?'),
                      value: repeatEventForAllTuesdays,
                      onChanged: (bool val) {
                        setState(() {
                          repeatEventForAllTuesdays = val;
                        });
                      }),
                  CheckboxListTile(
                      title: Text('Repeat for all Thursdays?'),
                      value: repeatEventForAllThursdays,
                      onChanged: (bool val) {
                        setState(() {
                          repeatEventForAllThursdays = val;
                        });
                      }),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: ButtonTheme(
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () {
                          print('Confirm role');
                        },
                        child: Text(
                          'Confirm',
                          style: TextStyle(fontSize: Styles.fontSizeLarger),
                        ),
                        color: Colors.green,
                        textColor: Colors.white,
                      ),
                    ),
                  )),
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.symmetric(vertical: 8.0),
                        child: ButtonTheme(
                          height: 50.0,
                          child: RaisedButton(
                            onPressed: () {
                              print('Cancel sign-up');
                            },
                            child: Text(
                              'Cancel',
                              style: TextStyle(fontSize: Styles.fontSizeLarger),
                            ),
                            color: Colors.red,
                            textColor: Colors.white,
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
