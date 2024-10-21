import 'package:flutter/material.dart';
import 'package:ecommercee/components/social_media_icon.dart';
import 'package:ecommercee/constant.dart';
import 'package:ecommercee/screens/sign_in/components/sign_in_form.dart';
import 'package:ecommercee/screens/sign_up/sign_up_screen.dart';
import 'package:ecommercee/screens/login_success/login_success_screen.dart'; // Tambahkan import ini
import 'package:ecommercee/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenWidth * 0.06),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: getPropScreenWidth(28),
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Sign in with your email and password \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.06,
                ),
                SignInForm(
                  onSignInSuccess: () {
                    Navigator.of(context).push(_createRoute());
                  },
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.06,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialMediaIcon(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SocialMediaIcon(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                    SocialMediaIcon(
                      icon: "assets/icons/twitter.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getPropScreenHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, SignUpScreen.routeName);
                        },
                        child: const Text("Sign Up",
                            style: TextStyle(color: kPrimaryColor)))
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const LoginSuccessScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end)
            .chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}
