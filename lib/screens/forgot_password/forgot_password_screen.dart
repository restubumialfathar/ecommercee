import 'package:flutter/material.dart';
import 'package:ecommercee/screens/forgot_password/components/body.dart';


class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}