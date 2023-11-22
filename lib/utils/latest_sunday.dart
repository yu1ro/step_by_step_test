import 'package:clock/clock.dart';

DateTime getLatestSunday() {
  final today = clock.now();
  if (today.weekday == DateTime.sunday) {
    return DateTime(today.year, today.month, today.day);
  }

  return DateTime(today.year, today.month, today.day - today.weekday);
}
