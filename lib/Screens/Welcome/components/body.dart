import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginregister/Screens/Login/login_screen.dart';
import 'package:loginregister/Screens/Signup/signup_screen.dart';
import 'package:loginregister/Screens/Welcome/components/background.dart';
import 'package:loginregister/components/constants.dart';
import 'package:loginregister/components/rounded_gradient_button.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Welcome To Coder Indonesia",
            style: GoogleFonts.cabin(
              color: kTextLogoColor,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(height: size.height * 0.05),
          Image.asset(
            "assets/images/logo.png",
          ),
          SizedBox(height: size.height * 0.05),
          RoundedGradientButton(
            gradient: kButtonGradientColor,
            press: () {
              Get.to(Login());
            },
            text: "Login",
            textColor: kTextColor,
          ),
          RoundedGradientButton(
            gradient: kButtonGradientColor,
            press: () {
              Get.to(SignUp());
            },
            text: "Register",
            textColor: kTextColor,
          ),
        ],
      ),
    );
  }
}
