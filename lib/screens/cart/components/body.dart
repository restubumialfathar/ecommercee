import 'package:ecommercee/model/cart.dart';
import 'package:ecommercee/screens/cart/components/item_cart.dart';
import 'package:ecommercee/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listCart.length,
        itemBuilder: (context, index) {
          final Cart cart = listCart[index];
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getPropScreenWidth(20),
              vertical: getPropScreenWidth(10),
            ),
            child: Dismissible(
                key: Key(cart.product.id.toString()),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {
                  setState(() {
                    listCart.removeAt(index);
                  });
                },
                background: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 98, 87),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: getPropScreenWidth(20)),
                        child: const Icon(Icons.delete_forever_rounded, color: Colors.white,),
                      ),
                    ],
                  ),
                ),
                child: Itemcart(cart: cart)),
          );
        });
  }
}
