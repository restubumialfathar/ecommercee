import 'package:ecommercee/model/cart.dart';
import 'package:ecommercee/screens/cart/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommercee/screens/home/compenent/icon_btn_with_counter.dart';
import 'package:ecommercee/screens/home/compenent/search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SeachField(),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, CartScreen.routeName);
            },
            child: IconBtnWithCounter(
              svgSrc: "assets/icons/Cart Icon.svg",
              num0fItems: listCart.length.toInt(),
            ),
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            num0fItems: 0,
          )
        ],
      ),
    );
  }
}
