import "package:flutter/material.dart";
import 'package:student_management_system/components/gradient_button.dart';
import "package:google_fonts/google_fonts.dart";

class NewAssignmentDialog extends StatefulWidget {
  @override
  _NewAssignmentDialogState createState() => _NewAssignmentDialogState();
}

class _NewAssignmentDialogState extends State<NewAssignmentDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: Stack(clipBehavior: Clip.none, children: [
      Positioned(
          right: -40,
          top: -40,
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: CircleAvatar( 
            	backgroundColor: Color(0xFFFFBF00),
            	child: Icon(Icons.close_rounded, color: Color(0xFF003049)),),
          )),
      Container(
      width: 500,
      height: 400,
        padding: EdgeInsets.all(50),
        child: Column(
          children: [
            Center(
              child: Text("New Assignment",
              			style: GoogleFonts.kaushanScript(fontSize: 32, fontWeight: FontWeight.w500, color: Color(0xFF003049)),
            ),),
            SizedBox(height: 25),
            Form(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Assignment title",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                ),
                SizedBox(height: 25),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Total marks",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                ),
                SizedBox(height: 25),
                GradientButton(
                  text: "Add Assignment",
                  ftSize: 18,
                  textColor: Color(0xFF003049),
                  buttonColor1: Color(0xFFFFBF00),
                  buttonColor2: Colors.orange,
                  shadowColor: Colors.grey.shade400,
                  padding: 40,
                )
              ],
            ))
          ],
        ),
      ),
    ]));
  }
}
