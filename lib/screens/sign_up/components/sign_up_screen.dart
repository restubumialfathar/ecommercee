import 'package:ecommercee/screens/sign_up/body.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/sign_up';

  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
