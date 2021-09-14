import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_management_system/screens/Dashboard/attendance.dart';
import 'package:student_management_system/screens/Dashboard/calendar.dart';
import 'package:student_management_system/screens/Dashboard/marks.dart';
import 'package:student_management_system/screens/Dashboard/planner.dart';
import 'package:student_management_system/screens/Dashboard/upcoming.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                child: Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
              color: Colors.deepPurple,
              padding: EdgeInsets.only(left: 10, top: 30, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.supervised_user_circle,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Mrs Hlebela",
                      style:
                          GoogleFonts.nunito(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                          ))),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Text("Dashboard",
                        style: GoogleFonts.nunito(
                            fontSize: 16, color: Colors.deepPurple)),
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Text("Calendar",
                        style: GoogleFonts.nunito(
                            fontSize: 16, color: Colors.white)),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Text("Students",
                        style: GoogleFonts.nunito(
                            fontSize: 16, color: Colors.white)),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Text("Marks",
                        style: GoogleFonts.nunito(
                            fontSize: 16, color: Colors.white)),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Text("Timetable",
                        style: GoogleFonts.nunito(
                            fontSize: 16, color: Colors.white)),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Text("Attendance",
                        style: GoogleFonts.nunito(
                            fontSize: 16, color: Colors.white)),
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                  )
                ],
              )),
        ),
        Expanded(
            flex: 5,
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                ),
                child: PlannerPage()))
      ],
    ))));
  }
}
