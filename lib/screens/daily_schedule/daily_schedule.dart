import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class DailySchedule extends StatefulWidget {
  const DailySchedule({super.key});

  @override
  State<DailySchedule> createState() => _DailySchedule();
}

class _DailySchedule extends State<DailySchedule> {
  DateTime focusedDay = DateTime.now();
  //goto next month
  void _nextMonth() {
    setState(() {
      focusedDay = DateTime(focusedDay.year, focusedDay.month + 1);
    });
  }

  //goto previous month
  void _previousMonth() {
    setState(() {
      focusedDay = DateTime(focusedDay.year, focusedDay.month - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE2ECEB),
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
                    "Today, ${DateFormat('d').format(DateTime.now())} \n ${DateFormat('MMMM, y').format(DateTime.now())}",
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
                  border: Border.all(width: 2, color: Color(0x3D675A6B)),
                  borderRadius: BorderRadius.circular(32),
                ),
                padding: EdgeInsets.all(10),
                child: TableCalendar(
                  focusedDay: DateTime.now(),
                  firstDay: DateTime.utc(2010),
                  lastDay: DateTime.utc(2030),

                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                    titleTextFormatter:
                        (date, locale) => DateFormat.MMMM(locale).format(date),
                    titleTextStyle: TextStyle(
                      fontFamily: 'Urbanist-VariableFont_wght',
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(width: 20),
                Icon(Icons.circle, size: 10, color: Color(0xFFD9D9D9)),
                Text(
                  "today",
                  style: TextStyle(
                    fontFamily: 'Urbanist-VariableFont_wght',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF888888),
                  ),
                ),
                SizedBox(width: 50),
                Icon(Icons.circle, size: 10, color: Color(0xFF3B5D5E)),
                Text(
                  "Current task",
                  style: TextStyle(
                    fontFamily: 'Urbanist-VariableFont_wght',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF888888),
                  ),
                ),
                SizedBox(width: 50),
                Icon(Icons.circle, size: 10, color: Color(0xFFD9D9D9)),
                Text(
                  "Upcoming tasks",
                  style: TextStyle(
                    fontFamily: 'Urbanist-VariableFont_wght',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF888888),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      _previousMonth();
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                  Spacer(),
                  Text(
                    DateFormat.MMMM().format(focusedDay),
                    style: TextStyle(
                      fontFamily: 'Urbanist-VariableFont_wght',
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      _nextMonth();
                    },
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
