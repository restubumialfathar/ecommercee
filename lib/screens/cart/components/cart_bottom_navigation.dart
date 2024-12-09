import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:ecommercee/components/my_default_button.dart';
import 'package:ecommercee/size_config.dart';
import 'package:ecommercee/state_managements/cart_provider.dart';

class CartBottomNavigation extends StatelessWidget {
  const CartBottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getPropScreenWidth(30),
        vertical: getPropScreenWidth(15),
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        // boxShadow: [
        //   BoxShadow(
        //     offset: const Offset(0, -15),
        //     blurRadius: 20,
        //     color: const Color(0xffdadada).withOpacity(0.30),
        //   ),
        // ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(getPropScreenWidth(10)),
                height: getPropScreenWidth(40),
                width: getPropScreenWidth(40),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 177, 229, 200),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset("assets/icons/receipt.svg", color: Color.fromARGB(255, 39, 97, 65)),
              ),
              const Spacer(),
              const Text("Add voucher code"),
              const SizedBox(width: 10),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 12,
              ),
            ],
          ),
          SizedBox(height: getPropScreenWidth(20)),
          Consumer<CartProvider>(
            builder: (context, cart, child) => Row(
              children: [
                Text.rich(TextSpan(children: [
                  const TextSpan(text: "Total:\n"),
                  TextSpan(
                    text: "\$${cart.totalPrice}",
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w800),
                  ),
                ])),
                const Spacer(),
                SizedBox(
                  width: getPropScreenWidth(190),
                  child: MyDefaultButton(
                    text: "Check Out",
                    press: () {
                      cart.clearCart();

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Check out success"),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
