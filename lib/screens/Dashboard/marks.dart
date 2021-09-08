import 'package:flutter/material.dart';

class MarksScreen extends StatefulWidget {
  @override
  _MarksScreenState createState() => _MarksScreenState();
}

class _MarksScreenState extends State<MarksScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                      ))),
              SizedBox(width: 30),
              Expanded(
                  flex: 1,
                  child: Container(
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ))),
              SizedBox(width: 30),
              Expanded(
                  flex: 1,
                  child: Container(
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ))),
              SizedBox(width: 30),
              Expanded(
                  flex: 1,
                  child: Container(
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ))),
            ]),
            SizedBox(height: 30),
            DataTable(
              columns: [
                DataColumn(label: Text("Name")),
                DataColumn(label: Text("Assgn 1")),
                DataColumn(label: Text("Assgn 2")),
                DataColumn(label: Text("Assgn 3")),
                DataColumn(label: Text("Assgn 4")),
                DataColumn(label: Text("Assgn 5"))
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text("Ryan")),
                  DataCell(Text("89")),
                  DataCell(Text("82")),
                  DataCell(Text("69")),
                  DataCell(Text("80")),
                  DataCell(Text("79")),
                ]),
                DataRow(cells: [
                  DataCell(Text("Lerato")),
                  DataCell(Text("69")),
                  DataCell(Text("85")),
                  DataCell(Text("82")),
                  DataCell(Text("59")),
                  DataCell(Text("49")),
                ]),
                DataRow(cells: [
                  DataCell(Text("Tsegofatso")),
                  DataCell(Text("80")),
                  DataCell(Text("56")),
                  DataCell(Text("75")),
                  DataCell(Text("66")),
                  DataCell(Text("83")),
                ]),
                DataRow(cells: [
                  DataCell(Text("Fikile")),
                  DataCell(Text("57")),
                  DataCell(Text("80")),
                  DataCell(Text("64")),
                  DataCell(Text("63")),
                  DataCell(Text("53")),
                ]),
                DataRow(cells: [
                  DataCell(Text("Karabo")),
                  DataCell(Text("45")),
                  DataCell(Text("67")),
                  DataCell(Text("74")),
                  DataCell(Text("55")),
                  DataCell(Text("77")),
                ]),
                DataRow(cells: [
                  DataCell(Text("Chris")),
                  DataCell(Text("53")),
                  DataCell(Text("92")),
                  DataCell(Text("78")),
                  DataCell(Text("86")),
                  DataCell(Text("84")),
                ]),
              ],
            )
          ],
        ));
  }
}
