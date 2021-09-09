import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: TableCalendar(
        firstDay: DateTime.utc(2021, 01, 01),
        lastDay: DateTime.utc(2022, 12, 31),
        focusedDay: DateTime.now(),
      ),
    );
  }
}
