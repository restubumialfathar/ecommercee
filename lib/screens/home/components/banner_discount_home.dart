import 'package:flutter/material.dart';
import 'package:ecommercee/size_config.dart';

class BannerDiscountHome extends StatelessWidget {
  const BannerDiscountHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 90,
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      margin: EdgeInsets.all(getPropScreenWidth(20)),
      child: Image.asset("assets/images/Frame 27.png"),
    );
  }
}