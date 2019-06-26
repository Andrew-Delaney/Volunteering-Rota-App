int calculateDayOffset(int day){
  switch (day) {
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 1;
    case 4:
      return 4;
    case 5:
      return 3;
    case 6:
      return 2;
    case 7:
      return 1;
    default:
      // TODO THIS SHOULD THROW AN ERROR
      return 0;
  }
}

DateTime getNextVolunteeringDay(DateTime currentDate) {
  return currentDate.add(new Duration(days: calculateDayOffset(currentDate.weekday)));
}
