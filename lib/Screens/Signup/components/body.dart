import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginregister/components/constants.dart';
import 'package:loginregister/components/or_divider.dart';
import 'package:loginregister/components/rounded_button.dart';
import 'package:loginregister/components/rounded_gradient_button.dart';
import 'package:loginregister/components/rounded_input_field.dart';
import 'package:loginregister/components/rounded_password_field.dart';
import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/logo.png"),
            SizedBox(height: size.height * 0.02),
            Text(
              "Welcome to Coder Indonesia",
              style: GoogleFonts.cabin(
                color: kTextLogoColor,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RoundedButton(
                  color: kFacebookColor,
                  press: () {},
                  text: "FACEBOOK",
                  textColor: kTextColor,
                ),
                RoundedButton(
                  color: kGoogleColor,
                  press: () {},
                  text: "GOOGLE",
                  textColor: kTextColor,
                )
              ],
            ),
            OrDivider(),
            RoundedInputField(
              hintText: "Full Name",
              icon: Icons.ac_unit,
              onChange: (value) {},
            ),
            RoundedInputField(
              hintText: "Username",
              icon: Icons.ac_unit,
              onChange: (value) {},
            ),
            RoundedInputPasswordField(
              hintText: "Password",
              icon: Icons.vpn_key,
              onChange: (value) {},
            ),
            RoundedInputPasswordField(
              hintText: "Confirm Password",
              icon: Icons.vpn_key,
              onChange: (value) {},
            ),
            RoundedGradientButton(
              gradient: kButtonGradientColor,
              press: () {},
              text: "Register",
              textColor: kTextColor,
            ),
          ],
        ),
      ),
    );
  }
}
