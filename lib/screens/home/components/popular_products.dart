import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommercee/components/Item_popular_product.dart';
import 'package:ecommercee/model/products.dart';
import 'package:ecommercee/screens/details/detail_screen.dart';
import 'package:ecommercee/screens/home/components/section_title.dart';
import 'package:ecommercee/size_config.dart';
import 'package:ecommercee/state_managements/favorite_provider.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
          child: const SectionTitle(
            title: "Popular Products",
          ),
        ),
        SizedBox(height: getPropScreenHeight(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            height: getPropScreenWidth(220),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(10)),
              child: Consumer<FavoriteProvider>(
                builder: (context, products, child) => Row(
                  children: List.generate(products.listProducts.length, (index) {
                    final Product product = products.listProducts[index];
                    return ItemPopularProduct(
                      product: product,
                      press: () => Navigator.pushNamed(
                          context, DetailScreen.routeName,
                          arguments: product),
                    );
                  }),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
