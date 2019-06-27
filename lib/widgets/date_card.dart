import 'package:flutter/material.dart';
import 'package:hh_rota/pages/volunteer_form.dart';
import 'package:hh_rota/utils/day_suffix.dart';
import 'package:hh_rota/utils/styles.dart';
import 'package:intl/intl.dart';

class DateCard extends StatefulWidget {
  final DateTime dateString;
  final String username;

  DateCard(this.dateString, this.username);

  @override
  DateCardState createState() => DateCardState(this.dateString, this.username);
}

class DateCardState extends State<DateCard> {

  DateTime date;
  final String username;
  final DateFormat dayFormatter = new DateFormat('EEE d');
  final DateFormat monthFormatter = new DateFormat('MMM');

  String volunteeringRole = 'Select volunteer role';

  DateCardState(this.date, this.username);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
                width: 2.0,
                color: Theme.of(context).dividerColor
            ),
          ),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Text(
                  dayFormatter.format(date) + getDaySuffix(date.day) + ', ' + monthFormatter.format(date),
                  style: TextStyle(
                    fontSize: Styles.fontSizeLargest
                  ),
                ),
            ),
            Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45, width: 2.0)
                  ),
                  child: FlatButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return VolunteerForm(username, this);
                          })
                        );
                      },
                      child: Center(
                        child: Text(
                          volunteeringRole,
                          style: TextStyle(
                            fontSize: Styles.fontSizeSmall,
                            color: Colors.black26,
                          ),
                        ),
                      )
                  ),
                )
            )
          ],
        )
    );
  }

  void updateVolunteeringRole(String newRole) {
    setState(() {
      volunteeringRole = newRole;
    });
  }
}
