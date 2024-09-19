import 'package:ecommercee/components/my_default_button.dart';
import 'package:ecommercee/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Image.asset('assets/images/success.png'),
          SizedBox(height: SizeConfig.screenHeight * 0.08),
          Text(
            'Login Success',
            style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: MyDefaultButton(
                text: 'Back to Home',
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
