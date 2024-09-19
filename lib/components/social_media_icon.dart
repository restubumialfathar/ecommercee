import 'package:ecommercee/constant.dart';
import 'package:ecommercee/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialMediaIcon extends StatelessWidget {
  final String icon;
  final VoidCallback onPressed;

  const SocialMediaIcon({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        height: getProportionateScreenHeight(40),
        width: getProportionateScreenWidth(40),
        decoration: const BoxDecoration(
          color: kSocialMediaBackgroundColor, // Colors.black,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}