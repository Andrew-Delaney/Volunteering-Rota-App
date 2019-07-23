import 'package:flutter/material.dart';
import 'package:hh_rota/utils/day_offset.dart';
import 'package:hh_rota/widgets/app_bar.dart';
import 'package:hh_rota/widgets/date_card.dart';
import 'package:hh_rota/widgets/month_picker.dart';

class AllDates extends StatelessWidget {
  AllDates({
    Key key,
    this.username
  }) : super(key: key);

  final String username;

  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();

    ScrollController scrollController = new ScrollController();

    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: HHAppBar(username: username),
        body: Center(
          child: Column(
            children: <Widget>[
              MonthDisplay(scrollController),
              Expanded(
                child: ListView.builder(
                  controller: scrollController,
                  itemBuilder: (BuildContext context, int index) {
                    DateTime nextAvailableDay = getNextVolunteeringDay(currentDate);
                    currentDate = nextAvailableDay;
                    return DateCard(nextAvailableDay, username);
                  },
                ),
              )
            ],
          ),
        )
    );
  }
}
