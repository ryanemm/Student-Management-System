import 'package:flutter/material.dart';

class Attendance extends StatefulWidget {
  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: DataTable(
        columns: [
          DataColumn(label: Text("Name")),
          DataColumn(label: Text("Monday")),
          DataColumn(label: Text("Tuesday")),
          DataColumn(label: Text("Wednesday")),
          DataColumn(label: Text("Thursday")),
          DataColumn(label: Text("Friday")),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text("Lerato")),
            DataCell(Icon(Icons.radio_button_unchecked)),
            DataCell(Icon(Icons.check)),
            DataCell(Icon(Icons.radio_button_unchecked)),
            DataCell(Icon(Icons.check)),
            DataCell(Icon(Icons.check)),
          ]),
          DataRow(cells: [
            DataCell(Text("Tom")),
            DataCell(Icon(Icons.check)),
            DataCell(Icon(Icons.check)),
            DataCell(Icon(Icons.radio_button_unchecked)),
            DataCell(Icon(Icons.check)),
            DataCell(Icon(Icons.check)),
          ]),
          DataRow(cells: [
            DataCell(Text("Ryan")),
            DataCell(Icon(Icons.check)),
            DataCell(Icon(Icons.check)),
            DataCell(Icon(Icons.radio_button_unchecked)),
            DataCell(Icon(Icons.check)),
            DataCell(Icon(Icons.check)),
          ]),
        ],
      ),
    );
  }
}
