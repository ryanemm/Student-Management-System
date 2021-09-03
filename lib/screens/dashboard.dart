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
          flex: 2,
          child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(10),
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
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
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
