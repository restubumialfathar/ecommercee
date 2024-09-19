import 'package:ecommercee/size_config.dart';
import 'package:flutter/material.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final Widget icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
      ),
    );
  }
}
