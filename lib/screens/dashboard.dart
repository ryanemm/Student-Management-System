import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              color: Colors.purple,
              padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
              child: Column(
                children: [
                  Icon(
                    Icons.supervised_user_circle,
                    size: 50,
                    color: Colors.white,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Mrs Hlebela",
                    style:
                        GoogleFonts.nunito(fontSize: 18, color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.purple,
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
                            fontSize: 16, color: Colors.purple)),
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.purple,
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
                      color: Colors.purple,
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
                      color: Colors.purple,
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
                      color: Colors.purple,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Text("Subjects",
                        style: GoogleFonts.nunito(
                            fontSize: 16, color: Colors.white)),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.purple,
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
                      color: Colors.purple,
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
            child: Column(
              children: [],
            ))
      ],
    ))));
  }
}
