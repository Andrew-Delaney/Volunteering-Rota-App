import 'package:flutter/material.dart';
import 'package:hh_rota/pages/all_dates.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final String username = 'Andy';

    return MaterialApp(
      title: 'Helping Hands Rota',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: AllDates(username: username),
    );
  }
}
