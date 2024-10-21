import 'package:ecommercee/model/cart.dart';
import 'package:ecommercee/screens/cart/components/body.dart';
import 'package:ecommercee/screens/cart/components/cart_bottom_navigation.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: const Body(),
      bottomNavigationBar: const CartBottomNavigation(),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
      title: Column(
        children: [
          const Text(
            "Your cart",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            "${listCart.length} items",
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}

