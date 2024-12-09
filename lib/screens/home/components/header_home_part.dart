import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommercee/screens/cart/cart_screen.dart';
import 'package:ecommercee/screens/home/components/icon_with_trigger.dart';
import 'package:ecommercee/screens/home/components/search_field.dart';
import 'package:ecommercee/size_config.dart';
import 'package:ecommercee/state_managements/cart_provider.dart';

class HeaderHomePart extends StatelessWidget {
  const HeaderHomePart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, CartScreen.routeName);
            },
            child: Consumer<CartProvider>(
              builder: (context, cart, child) => 
              IconWithTrigger(
                svgIcon: "assets/icons/Cart Icon.svg",
                trigger: cart.cartItems.length.toString(),
              ),
            ),
          ),
          const IconWithTrigger(
            svgIcon: "assets/icons/Bell.svg",
          ),
        ],
      ),
    );
  }
}
