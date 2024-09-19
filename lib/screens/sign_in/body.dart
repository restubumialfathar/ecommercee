import 'package:ecommercee/components/social_media_icon.dart';
import 'package:ecommercee/constant.dart';
import 'package:ecommercee/screens/sign_in/sign_in_form.dart';
import 'package:ecommercee/screens/sign_up/components/sign_up_screen.dart';
import 'package:ecommercee/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenHeight(20),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Sign in with your email and password \nor continue with social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                const SignInForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialMediaIcon(
                      icon: 'assets/icons/google-icon.svg',
                      onPressed: () {},
                    ),
                    SocialMediaIcon(
                      icon: 'assets/icons/facebook-2.svg',
                      onPressed: () {},
                    ),
                    SocialMediaIcon(
                      icon: 'assets/icons/twitter.svg',
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                Row(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
