import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Colors.white),
        padding: EdgeInsets.all(30),
        child: Column(children: [
          TableCalendar(
            firstDay: DateTime.utc(2021, 01, 01),
            lastDay: DateTime.utc(2022, 12, 31),
            focusedDay: DateTime.now(),
          ),
          SizedBox(height: 30),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Scheduled Events",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w400, fontSize: 22))
              ],
            ),
          ))
        ]));
  }
}
