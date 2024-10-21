import 'package:ecommercee/constant.dart';
import 'package:ecommercee/model/cart.dart';
import 'package:ecommercee/size_config.dart';
import 'package:flutter/material.dart';

class Itemcart extends StatelessWidget {
  const Itemcart({
    super.key, required this.cart,
  });

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: getPropScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              width: getPropScreenWidth(140),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kSecondaryColor.withOpacity(0.2)),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(cart.product.title),
            const SizedBox(height: 5),
            Text.rich(
              TextSpan(children: [
                TextSpan(
                  text: "\$${cart.product.price}",
                  style: const TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                TextSpan(
                  text: "x${cart.numOfItem}",
                  style: const TextStyle(
                    color: kTextColor,
                  ),
                )
              ]),
            ),
          ],
        )
      ],
    );
  }
}
