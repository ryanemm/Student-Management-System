import 'dart:io';
import 'dart:convert' as convert;
import "dart:async";
import "package:flutter/foundation.dart";

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:http/http.dart" as http;
import 'package:student_management_system/models/attendance_entry.dart';

class Attendance extends StatefulWidget {
  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  late Future<List<AttendanceEntry>> _fetchAttendance;

  @override
  void initState() {
    _fetchAttendance = fetchAttendance(http.Client());
  }

  Future<List<AttendanceEntry>> fetchAttendance(http.Client client) async {
    var response =
        await http.get(Uri.parse("http://8.209.117.57/cms/list.php"));

    return parseAttendanceEntries(response.body);
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
    return /*FutureBuilder<List<AttendanceEntry>>(
      future: _fetchAttendance,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
              child: Column(
            children: [
              Icon(Icons.error_outline, color: Colors.red, size: 100),
              Text(snapshot.data.toString())
            ],
          ));
        } else if (snapshot.hasData) {
          return AttendanceList(attList: snapshot.data!);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );*/

        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.white),
            padding: EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              DataTable(
                columns: [
                  DataColumn(label: Text("Name")),
                  DataColumn(label: Text("Monday 20")),
                  DataColumn(label: Text("Tuesday 21")),
                  DataColumn(label: Text("Wednesday 22")),
                  DataColumn(label: Text("Thursday 23")),
                  DataColumn(label: Text("Friday 24")),
                  DataColumn(label: Text("Monday 27")),
                  DataColumn(label: Text("Tuesday 28")),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text("Lerato")),
                    DataCell(Icon(Icons.radio_button_unchecked)),
                    DataCell(Icon(Icons.check)),
                    DataCell(Icon(Icons.radio_button_unchecked)),
                    DataCell(Icon(Icons.check)),
                    DataCell(Icon(Icons.check)),
                    DataCell(Icon(Icons.radio_button_unchecked)),
                    DataCell(Icon(Icons.check)),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("Tom")),
                    DataCell(Icon(Icons.check)),
                    DataCell(Icon(Icons.check)),
                    DataCell(Icon(Icons.radio_button_unchecked)),
                    DataCell(Icon(Icons.check)),
                    DataCell(Icon(Icons.check)),
                    DataCell(Icon(Icons.radio_button_unchecked)),
                    DataCell(Icon(Icons.check)),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("Ryan")),
                    DataCell(Icon(Icons.check)),
                    DataCell(Icon(Icons.check)),
                    DataCell(Icon(Icons.radio_button_unchecked)),
                    DataCell(Icon(Icons.check)),
                    DataCell(Icon(Icons.check)),
                    DataCell(Icon(Icons.check)),
                    DataCell(Icon(Icons.check)),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("Lerato")),
                    DataCell(Icon(Icons.radio_button_unchecked)),
                    DataCell(Icon(Icons.check)),
                    DataCell(Icon(Icons.radio_button_unchecked)),
                    DataCell(Icon(Icons.check)),
                    DataCell(Icon(Icons.check)),
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
                    DataCell(Icon(Icons.check)),
                    DataCell(Icon(Icons.check)),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("Lerato")),
                    DataCell(Icon(Icons.radio_button_unchecked)),
                    DataCell(Icon(Icons.check)),
                    DataCell(Icon(Icons.radio_button_unchecked)),
                    DataCell(Icon(Icons.check)),
                    DataCell(Icon(Icons.check)),
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
                    DataCell(Icon(Icons.check)),
                    DataCell(Icon(Icons.check)),
                  ]),
                  DataRow(cells: [
                    DataCell(Text("Lerato")),
                    DataCell(Icon(Icons.radio_button_unchecked)),
                    DataCell(Icon(Icons.check)),
                    DataCell(Icon(Icons.radio_button_unchecked)),
                    DataCell(Icon(Icons.check)),
                    DataCell(Icon(Icons.check)),
                    DataCell(Icon(Icons.check)),
                    DataCell(Icon(Icons.check)),
                  ]),
                ],
              ),
              SizedBox(height: 15),
              Center(
                child: Container(
                    padding:
                        EdgeInsets.only(bottom: 6, top: 6, left: 50, right: 50),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFBF00),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "TAKE DAILY ATTENDANCE",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF003049),
                            fontSize: 16),
                      ),
                    )),
              ),
            ]));
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
          return Row(
            children: [
              Text(attList[index].studentName),
              Text(attList[index].present.toString())
            ],
          );
        });
  }
}
