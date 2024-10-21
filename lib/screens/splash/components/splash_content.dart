import 'package:flutter/material.dart';
import 'package:ecommercee/constant.dart';
import 'package:ecommercee/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key, required this.text, required this.image
  });

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
         Text('Cartify',
            style: TextStyle(
              fontSize: getPropScreenWidth(50),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold
            ), ),
           Text(text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: getPropScreenWidth(14),
              color: kSecondaryColor
            ), 
            ),
            const Spacer(flex: 2,),
            Image.asset(image, 
            height: getPropScreenHeight(295), 
            width: getPropScreenWidth(265),),
      ],
    );
  }
}