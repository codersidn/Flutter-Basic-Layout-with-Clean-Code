import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.textColor,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      width: size.width * 0.43,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 17, horizontal: 15),
          color: color,
          onPressed: press,
          child: Text(text,
              style: GoogleFonts.cabin(
                color: textColor,
                fontWeight: FontWeight.w600,
                fontSize: 13,
              )),
        ),
      ),
    );
  }
}
