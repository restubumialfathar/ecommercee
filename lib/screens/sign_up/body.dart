import 'package:ecommercee/components/social_media_icon.dart';
import 'package:ecommercee/constant.dart';
import 'package:ecommercee/screens/sign_up/sign_up_form.dart';
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                   SizedBox(
                    height: SizeConfig.screenHeight * 0.02,
                  ),
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
                  const SignUpForm(),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.07,
                  ),
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
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),
                  const Text("By continuing your confirm that you agree \nwithour Term and Condition",
                  textAlign: TextAlign.center,),
                  SizedBox(
                    height: SizeConfig.screenHeight * 0.03,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
