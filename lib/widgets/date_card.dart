import 'package:flutter/material.dart';
import 'package:hh_rota/utils/day_suffix.dart';
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
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(dayFormatter.format(date) + getDaySuffix(date.day) + ', ' + monthFormatter.format(date)),
            ),
            Expanded(
                child: Text('')
            )
          ],
        )
    );
  }
}
