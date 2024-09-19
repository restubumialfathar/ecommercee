import 'package:ecommercee/size_config.dart';
import 'package:flutter/material.dart';

// Gradient list
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xffffa53e),
    Color(0xffff7643),
  ],
);

// Color Variables
const kPrimaryColor = Color(0xffff7643);
const kPrimaryLightColor = Color(0xffffecdf);
const kSecondaryColor = Color(0xff979797);
const kTextColor = Color(0xff757575);
const kBackgroundColor = Color(0xffF2F2F2);
const kSocialMediaBackgroundColor = Color(0xFFF5F6F9);
final TextStyle headingTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

// Animation Duration
const kAnimationDuration = Duration(milliseconds: 200);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kConfirmPassNullError = 'Please Re-Enter your password';

const String kNameNullError = "Please Enter your Name";
const String kPhoneNumberNullError = "Please Enter your Phone Number";
const String kAddressNullError = "Please Enter your Address";


