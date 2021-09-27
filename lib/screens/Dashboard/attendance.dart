import 'dart:io';
import 'dart:convert' as convert;
import "dart:async";
import "package:flutter/foundation.dart";

import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'package:student_management_system/models/attendance_entry.dart';

class Attendance extends StatefulWidget {
  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  Future<List<AttendanceEntry>> fetchAttendance(http.Client client) async {
    var response = await http.get(Uri.parse("8.209.117.57/cms/list.php"));

    return compute(parseAttendanceEntries, response.body);
  }

  //a function that converts a response body to a list of attendanceEntries
  List<AttendanceEntry> parseAttendanceEntries(String responseBody) {
    final parsed =
        convert.jsonDecode(responseBody).cast<Map<String, dynamic>>();

    return parsed
        .map<AttendanceEntry>((json) => AttendanceEntry.fromJson(json))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<AttendanceEntry>>(
      future: fetchAttendance(http.Client()),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(
            child: Text("An error has occurred"),
          );
        } else if (snapshot.hasData) {
          return AttendanceList(attList: snapshot.data!);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );

    /*Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Colors.white),
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
    );*/
  }
}

class AttendanceList extends StatelessWidget {
  const AttendanceList({Key? key, required this.attList}) : super(key: key);

  final List<AttendanceEntry> attList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: attList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Text(attList[index].studentName),
              Text(attList[index].present.toString())
            ],
          );
        });
  }
}
