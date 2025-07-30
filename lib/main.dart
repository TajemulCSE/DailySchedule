import 'package:daily_schedule/screens/daily_schedule/daily_schedule.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DailySchedule(),
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Color(0xFF3B5D5E),
          unselectedItemColor: Color(0xFFAEAFB0),
          selectedLabelStyle: TextStyle(
            fontFamily: 'Urbanist-VariableFont_wght',
            fontWeight: FontWeight.w700
          ),
          unselectedLabelStyle: TextStyle(
           
            fontFamily: 'Urbanist-VariableFont_wght',
            fontWeight: FontWeight.w500


          )
        
        )
      ),
    );
  }
}
