enum Month {
  January,
  February,
  March,
  April,
  May,
  June,
  July,
  August,
  September,
  October,
  November,
  December
}

String monthToString(Month month) {
  return month.toString().split('.').last;
}
