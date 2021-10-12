import "package:flutter/material.dart";
import 'package:student_management_system/components/gradient_button.dart';

class NewAssignmentDialog extends StatefulWidget {
  @override
  _NewAssignmentDialogState createState() => _NewAssignmentDialogState();
}

class _NewAssignmentDialogState extends State<NewAssignmentDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: Stack(clipBehavior: Clip.hardEdge, children: [
      Positioned(
          right: -40,
          top: -40,
          child: InkResponse(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.close_rounded),
          )),
      Container(
        padding: EdgeInsets.all(50),
        child: Column(
          children: [
            Center(
              child: Text("New Assignment"),
            ),
            Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Assignment title",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)))),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Total marks",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)))),
                ),
                GradientButton(
                  text: "Add Assignment",
                  textColor: Color(0xFF003049),
                  buttonColor1: Color(0xFFFFBF00),
                  buttonColor2: Colors.orange,
                )
              ],
            ))
          ],
        ),
      ),
    ]));
  }
}
