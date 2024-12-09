import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommercee/screens/profile/components/item_button_profile.dart';
import 'package:ecommercee/screens/profile/components/profile_picture.dart';
import 'package:ecommercee/screens/sign_in/sign_in_screen.dart';
import 'package:ecommercee/size_config.dart';
import 'package:ecommercee/state_managements/auth_provider.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: getPropScreenWidth(30)),
      child: Column(
        children: [
          const ProfilePicture(),
          Consumer<AuthProvider>(
            builder: (context, email, child) => 
             Text(email.savedEmail)
          ),
          SizedBox(height: getPropScreenWidth(20)),
          ItemButtonProfile(
            svgIcon: "assets/icons/User Icon.svg",
            title: "My Account",
            press: () {},
          ),
          ItemButtonProfile(
            svgIcon: "assets/icons/Bell.svg",
            title: "Notification",
            press: () {},
          ),
          ItemButtonProfile(
            svgIcon: "assets/icons/Settings.svg",
            title: "Settings",
            press: () {},
          ),
          ItemButtonProfile(
            svgIcon: "assets/icons/Question mark.svg",
            title: "Help Center",
            press: () {},
          ),
          ItemButtonProfile(
            svgIcon: "assets/icons/Log out.svg",
            title: "Log Out",
            press: () {

              Provider.of<AuthProvider>(context, listen: false).setAuth(false);
              Navigator.pushNamedAndRemoveUntil(context, SignInScreen.routeName,
                  (Route<dynamic> route) => false);
            },
          ),
        ],
      ),
    );
  }
}
