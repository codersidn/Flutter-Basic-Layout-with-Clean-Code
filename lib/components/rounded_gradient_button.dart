import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedGradientButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color textColor;
  final Gradient gradient;
  const RoundedGradientButton({
    Key key,
    this.text,
    this.press,
    this.textColor,
    this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
        gradient: gradient,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(60),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          onPressed: press,
          child: Text(text,
              style: GoogleFonts.cabin(
                color: textColor,
                fontWeight: FontWeight.w600,
                fontSize: 22,
              )),
        ),
      ),
    );
  }
}
