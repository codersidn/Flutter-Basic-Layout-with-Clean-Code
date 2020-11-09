import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginregister/Screens/Login/components/background.dart';
import 'package:loginregister/components/constants.dart';
import 'package:loginregister/components/or_divider.dart';
import 'package:loginregister/components/rounded_button.dart';
import 'package:loginregister/components/rounded_gradient_button.dart';
import 'package:loginregister/components/rounded_input_field.dart';
import 'package:loginregister/components/rounded_password_field.dart';

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
            SizedBox(height: size.height * 0.05),
            Text(
              "Welcom To PSD Gang",
              style: GoogleFonts.cabin(
                color: kTextLogoColor,
                fontWeight: FontWeight.w400,
                fontSize: 22,
              ),
            ),
            SizedBox(height: size.height * 0.05),
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
                  text: "GOOGLE+",
                  textColor: kTextColor,
                )
              ],
            ),
            OrDivider(),
            RoundedInputField(
              hintText: "Username",
              onChange: (value) {},
            ),
            RoundedInputPasswordField(
              hintText: "Password",
              onChange: (value) {},
            ),
            RoundedGradientButton(
              gradient: kButtonGradientColor,
              press: () {},
              text: "Login",
              textColor: kTextColor,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Forgot Passoword?",
                style: GoogleFonts.cabin(
                  color: kTextFieldColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
