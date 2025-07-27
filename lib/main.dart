import 'package:daily_schedule/screens/daily_schedule/daily_schedule.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DailySchedule());
  }
}
