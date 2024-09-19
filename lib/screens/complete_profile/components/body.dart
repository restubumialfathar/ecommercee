import 'package:ecommercee/constant.dart';
import 'package:ecommercee/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 
        getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
               Text(
                    'Register Account',
                    style: headingTextStyle,
                  ),
                  const Text(
                    'Complete your details or continue \nwith social media',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.07,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}