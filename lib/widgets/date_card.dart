import 'package:flutter/material.dart';
import 'package:hh_rota/utils/day_suffix.dart';
import 'package:hh_rota/utils/styles.dart';
import 'package:intl/intl.dart';

class DateCard extends StatefulWidget {
  final DateTime dateString;

  DateCard(this.dateString);

  @override
  _DateCardState createState() => _DateCardState(this.dateString);
}

class _DateCardState extends State<DateCard> {

  DateTime date;
  var dayFormatter = new DateFormat('EEE d');
  var monthFormatter = new DateFormat('MMM');

  _DateCardState(this.date);

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
                child: Text('')
            )
          ],
        )
    );
  }
}
