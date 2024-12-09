import 'package:flutter/material.dart';
import 'package:ecommercee/components/costum_navigation_bar.dart';
import 'package:ecommercee/components/my_default_button.dart';
import 'package:ecommercee/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
          Image.asset("assets/images/ls.png"),
          SizedBox(
            height: SizeConfig.screenHeight * 0.08,
          ),
          Text(
            "Login Success",
            style: TextStyle(
              fontSize: getPropScreenWidth(30),
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: MyDefaultButton(
                text: "Back to Home",
                press: () {
                  Navigator.pushNamedAndRemoveUntil(context, CustomNavigationBar.routeName,
                  (Route<dynamic> route) => false);
                }),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
