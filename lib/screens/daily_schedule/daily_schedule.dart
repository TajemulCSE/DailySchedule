import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class DailySchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFFE2ECEB),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Text(
                  "Schedule",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Urbanist-VariableFont_wght',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
                  child: Text(
                    "Today, 9th \nMarch,2024",
                    style: TextStyle(
                      fontFamily: 'Urbanist-VariableFont_wght',
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Month",
                      style: TextStyle(
                        fontFamily: 'Urbanist-VariableFont_wght',
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_drop_down_sharp),
                ),
              ],
            ),
            Padding(
            
              padding: const EdgeInsets.all(20.0),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(width: 2,
                  color: Color(0x3D675A6B)
                  ),
                  borderRadius: BorderRadius.circular(32)
                ),
                padding: EdgeInsets.all(10),
                child: TableCalendar(
                  focusedDay: DateTime.now(),
                  firstDay: DateTime.utc(2010),
                  lastDay: DateTime.utc(2030),

                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
