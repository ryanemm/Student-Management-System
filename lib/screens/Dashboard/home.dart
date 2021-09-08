import 'package:flutter/material.dart';
import 'package:student_management_system/screens/Dashboard/marks.dart';
import 'package:student_management_system/screens/Dashboard/upcoming.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        children: [
          Container(
            height: 50,
            //margin: EdgeInsets.only(left: 40, right: 40),
            decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Row(children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                              height: 110,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ))),
                      SizedBox(width: 30),
                      Expanded(
                          flex: 1,
                          child: Container(
                              height: 110,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ))),
                      SizedBox(width: 30),
                      Expanded(
                          flex: 1,
                          child: Container(
                              height: 110,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ))),
                      SizedBox(width: 30),
                      Expanded(
                          flex: 1,
                          child: Container(
                              height: 110,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ))),
                    ]),
                  ],
                ),
              ),
              Expanded(flex: 1, child: MarksScreen()),
            ],
          )
        ],
      ),
    ));
  }
}
