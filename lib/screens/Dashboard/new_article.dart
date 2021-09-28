
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import "package:http/http.dart" as http;

class NewArticle extends StatefulWidget {
  @override
  _NewArticleState createState() => _NewArticleState();
}

class _NewArticleState extends State<NewArticle> {
  TextEditingController titleController = new TextEditingController();
  TextEditingController summaryController = new TextEditingController();
  TextEditingController contentController = new TextEditingController();

  //HTTP post request to insert a new article into the database
  Future _createArticle() async {
    return await http.post(
      Uri.parse("http://8.209.117.57/cms/create.php"),
      body: {
        "title": titleController.text,
        "summary": summaryController.text,
        "content": contentController.text
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 80, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
         
            SizedBox(height: 30),
            TextFormField(
              controller: titleController,
              decoration: InputDecoration(
                hintText: "Title",
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 3),
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
            SizedBox(height: 30),
            TextFormField(
              controller: summaryController,
              decoration: InputDecoration(
                hintText: "Summary",
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 3),
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
            SizedBox(height: 30),
            TextFormField(
              controller: contentController,
              decoration: InputDecoration(
                hintText: "Content",
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 3),
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.blue, Colors.purpleAccent]),
                borderRadius: BorderRadius.circular(8),
              ),
              child: (TextButton(
                child: Text(
                  "Submit",
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w300, color: Colors.white),
                ),
                onPressed: () async {
                  await _createArticle();
                },
              )),
            ),
          ],
        ),
      ),
    );
  }
}
