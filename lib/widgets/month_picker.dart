import 'package:flutter/material.dart';
import 'package:hh_rota/model/month.dart';

class MonthDisplay extends StatefulWidget {
  MonthDisplay();

  @override
  _MonthDisplayState createState() => _MonthDisplayState();
}

class _MonthDisplayState extends State<MonthDisplay> {
  int monthIndex = new DateTime.now().month - 1;
  final double size = 50.0;

  _MonthDisplayState();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.symmetric(
        vertical: 8.0
      ),
      decoration: new BoxDecoration(
          border: new Border(
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
              iconSize: size,
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
                      fontSize: size / 2.5,

                  )
                ),
              )),
          Expanded(
            child: IconButton(
              icon: Icon(Icons.chevron_right),
              iconSize: size,
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
