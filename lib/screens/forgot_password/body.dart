import 'package:ecommercee/constant.dart';
import 'package:ecommercee/screens/forgot_password/components/forgot_password_form.dart';
import 'package:ecommercee/screens/sign_up/components/sign_up_screen.dart';
import 'package:ecommercee/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(28),
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Enter your email to reset your password',
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                const ForgotPasswordForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                dontHaveAccountText(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row dontHaveAccountText(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Don\'t have an account?',
        ),
        SizedBox(
          width: getProportionateScreenWidth(5),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignUpScreen.routeName);
          },
          child: const Text(
          'Sign Up',
          style: TextStyle(
            color: kPrimaryColor,
          ),
        ),
        ),
      ],
    );
  }
}
