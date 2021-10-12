import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_management_system/screens/Dashboard/new_assignment_dialog.dart';

class MarksScreen extends StatefulWidget {
  @override
  _MarksScreenState createState() => _MarksScreenState();
}

class _MarksScreenState extends State<MarksScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Colors.white),
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Center(
                      child: Text(
                        "Overview",
                        style: GoogleFonts.nunito(
                            fontSize: 26, fontWeight: FontWeight.w400),
                      ),
                    ),
                  )),
              SizedBox(width: 30),
              Expanded(
                  flex: 1,
                  child: Container(
                    height: 110,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFBF00),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Center(
                      child: Text(
                        "Assignments",
                        style: GoogleFonts.nunito(
                          fontSize: 26,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF003049),
                        ),
                      ),
                    ),
                  )),
              SizedBox(width: 30),
              Expanded(
                  flex: 1,
                  child: Container(
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Center(
                      child: Text(
                        "Tests",
                        style: GoogleFonts.nunito(
                            fontSize: 26, fontWeight: FontWeight.w400),
                      ),
                    ),
                  )),
              SizedBox(width: 30),
              Expanded(
                  flex: 1,
                  child: Container(
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Center(
                      child: Text(
                        "Exams",
                        style: GoogleFonts.nunito(
                            fontSize: 26, fontWeight: FontWeight.w400),
                      ),
                    ),
                  )),
            ]),
            SizedBox(height: 30),
            Container(
                width: 300,
                padding:
                    EdgeInsets.only(bottom: 6, top: 6, left: 50, right: 50),
                decoration: BoxDecoration(
                  color: Color(0xFFFFBF00),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return NewAssignmentDialog();
                        });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add_task_outlined,
                        color: Color(0xFF003049),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "NEW ASSIGNMENT",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF003049),
                            fontSize: 16),
                      ),
                    ],
                  ),
                )),
            SizedBox(height: 15),
            DataTable(
              columns: [
                DataColumn(label: Text("Name")),
                DataColumn(label: Text("Assgn 1")),
                DataColumn(label: Text("Assgn 2")),
                DataColumn(label: Text("Assgn 3")),
                DataColumn(label: Text("Assgn 4")),
                DataColumn(label: Text("Assgn 5")),
                DataColumn(label: Text("Assgn 6")),
                DataColumn(label: Text("Assgn 7")),
                DataColumn(label: Text("Assgn 8"))
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text("Ryan")),
                  DataCell(Text("89")),
                  DataCell(Text("82")),
                  DataCell(Text("69")),
                  DataCell(Text("80")),
                  DataCell(Text("79")),
                  DataCell(Text("80")),
                  DataCell(Text("79")),
                  DataCell(Text("79")),
                ]),
                DataRow(cells: [
                  DataCell(Text("Lerato")),
                  DataCell(Text("69")),
                  DataCell(Text("85")),
                  DataCell(Text("82")),
                  DataCell(Text("59")),
                  DataCell(Text("49")),
                  DataCell(Text("80")),
                  DataCell(Text("79")),
                  DataCell(Text("79")),
                ]),
                DataRow(cells: [
                  DataCell(Text("Tsegofatso")),
                  DataCell(Text("80")),
                  DataCell(Text("56")),
                  DataCell(Text("75")),
                  DataCell(Text("66")),
                  DataCell(Text("83")),
                  DataCell(Text("80")),
                  DataCell(Text("79")),
                  DataCell(Text("79")),
                ]),
                DataRow(cells: [
                  DataCell(Text("Fikile")),
                  DataCell(Text("57")),
                  DataCell(Text("80")),
                  DataCell(Text("64")),
                  DataCell(Text("63")),
                  DataCell(Text("53")),
                  DataCell(Text("80")),
                  DataCell(Text("79")),
                  DataCell(Text("79")),
                ]),
                DataRow(cells: [
                  DataCell(Text("Karabo")),
                  DataCell(Text("45")),
                  DataCell(Text("67")),
                  DataCell(Text("74")),
                  DataCell(Text("55")),
                  DataCell(Text("77")),
                  DataCell(Text("80")),
                  DataCell(Text("79")),
                  DataCell(Text("79")),
                ]),
                DataRow(cells: [
                  DataCell(Text("Chris")),
                  DataCell(Text("53")),
                  DataCell(Text("92")),
                  DataCell(Text("78")),
                  DataCell(Text("86")),
                  DataCell(Text("84")),
                  DataCell(Text("80")),
                  DataCell(Text("79")),
                  DataCell(Text("79")),
                ]),
                DataRow(cells: [
                  DataCell(Text("Jonathan")),
                  DataCell(Text("53")),
                  DataCell(Text("92")),
                  DataCell(Text("78")),
                  DataCell(Text("86")),
                  DataCell(Text("84")),
                  DataCell(Text("80")),
                  DataCell(Text("79")),
                  DataCell(Text("79")),
                ]),
              ],
            )
          ],
        ));
  }
}
