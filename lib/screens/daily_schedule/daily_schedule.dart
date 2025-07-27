import 'package:flutter/material.dart';

class DailySchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
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
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Today, 9th \nMarch,2024",
                  style: TextStyle(
                    fontFamily: 'Urbanist-VariableFont_wght',
                    fontWeight: FontWeight.w300,
                    fontSize: 14
                  ),),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("Month",style: 
                    TextStyle(
                      fontFamily: 'Urbanist-VariableFont_wght',
                      fontWeight: FontWeight.w400,fontSize: 12
                    ),)),
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down_sharp))
              ],
              
            )
          ],
        ),
      ),
    );
  }
}
