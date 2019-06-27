import 'package:flutter/material.dart';
import 'package:hh_rota/model/month.dart';
import 'package:hh_rota/utils/styles.dart';

class MonthDisplay extends StatefulWidget {
  MonthDisplay();

  @override
  _MonthDisplayState createState() => _MonthDisplayState();
}

class _MonthDisplayState extends State<MonthDisplay> {
  int monthIndex = new DateTime.now().month - 1;

  _MonthDisplayState();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 8.0
      ),
      decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
                width: 2.0,
                color: Theme.of(context).dividerColor
            )
          )
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: IconButton(
              icon: Icon(Icons.chevron_left),
              iconSize: Styles.iconSizeLarge,
              onPressed: () {
                setState(() {
                  monthIndex = (monthIndex - 1) % Month.values.length;
                });
              },
            ),
          ),
          Expanded(
              child: Center(
                child: Text(
                  monthToString(Month.values[monthIndex]),
                  style: TextStyle(
                      fontSize: Styles.fontSizeLargest,

                  )
                ),
              )),
          Expanded(
            child: IconButton(
              icon: Icon(Icons.chevron_right),
              iconSize: Styles.iconSizeLarge,
              onPressed: () {
                setState(() {
                  monthIndex = (monthIndex + 1) % Month.values.length;
                });
                },
            ),
          ),
        ],
      )
    );
  }
}
