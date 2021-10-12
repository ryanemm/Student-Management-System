import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    Key? key,
    this.text = "Button",
    this.ftSize = 16.0,
    this.buttonColor = Colors.blue,
    this.textColor = Colors.white,
    this.padding = 20.0,
    this.buttonColor1 = Colors.purple,
    this.buttonColor2 = Colors.blue,
    this.shadowColor = Colors.blue,
  }) : super(key: key);

  final String text;
  final double ftSize;
  final Color buttonColor;
  final Color textColor;
  final double padding;
  final Color buttonColor1;
  final Color buttonColor2;
  final Color shadowColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 100,
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: padding),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: Offset(4, 7),
              color: shadowColor,
              blurRadius: 5,
              spreadRadius: 2)
        ],
        gradient: LinearGradient(colors: [buttonColor1, buttonColor2]),
        borderRadius: BorderRadius.circular(30),
      ),
      child: (TextButton(
        child: Text(
          text,
          style: GoogleFonts.nunito(
              fontSize: ftSize, fontWeight: FontWeight.w400, color: textColor),
        ),
        onPressed: () {},
      )),
    );
  }
}
