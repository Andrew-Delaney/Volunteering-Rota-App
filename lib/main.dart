import 'package:flutter/material.dart';
import 'package:hh_rota/model/month.dart';
import 'package:hh_rota/utils/day_offset.dart';
import 'package:hh_rota/widgets/date_card.dart';
import 'package:hh_rota/widgets/month_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Helping Hands Rota',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  final String username = 'Andy';
  final int testNum = 0;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Month> months = Month.values;

  List<DateCard> volunteeringDays = [];

  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();

    for (int i = 0; i < 100; i++) {
        DateTime nextAvailableDay = getNextVolunteeringDay(currentDate);
        currentDate = nextAvailableDay;
        volunteeringDays.add(DateCard(nextAvailableDay));
    }

    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text(widget.username),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                print("Menu Pressed");
              },
            )
          ],
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              MonthDisplay(),
              Expanded(
                child: ListView(
                  children: volunteeringDays,
                ),
              )
            ],
          ),
        )
    );
  }
}
