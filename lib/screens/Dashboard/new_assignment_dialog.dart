import "package:flutter/material.dart";

class NewAssignmentDialog extends StatefulWidget {
  @override
  _NewAssignmentDialogState createState() => _NewAssignmentDialogState();
}

class _NewAssignmentDialogState extends State<NewAssignmentDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: Container(
            padding: EdgeInsets.all(50),
            child: Column(
              children: [
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Assignment title",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)))),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Total marks",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)))),
                    ),
                  ],
                ))
              ],
            )));
  }
}
