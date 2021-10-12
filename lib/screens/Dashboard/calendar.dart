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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TableCalendar(
            firstDay: DateTime.utc(2021, 01, 01),
            lastDay: DateTime.utc(2022, 12, 31),
            focusedDay: DateTime.now(),
          ),
          SizedBox(height: 15),
          Container(
              padding: EdgeInsets.only(bottom: 6, top: 6, left: 50, right: 50),
              decoration: BoxDecoration(
                color: Color(0xFFFFBF00),
                borderRadius: BorderRadius.circular(25),
              ),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_task_outlined,
                      color: Color(0xFF003049),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "NEW EVENT",
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF003049),
                          fontSize: 16),
                    ),
                  ],
                ),
              )),
          SizedBox(height: 15),
          Expanded(
              child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Upcoming Events",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w400, fontSize: 22)),
                SizedBox(height: 10),
                Text("Maths test - 07 October",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w300, fontSize: 18)),
                Text("Staff meeting - 03 October",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w300, fontSize: 18)),
                Text("Term marks submission - 13 October",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w300, fontSize: 18))
              ],
            ),
          ))
        ]));
  }
}
