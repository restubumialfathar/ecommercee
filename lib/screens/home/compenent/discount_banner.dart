import 'package:flutter/material.dart';
import 'package:ecommercee/size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
      padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20),
      vertical: getPropScreenWidth(15),
      ), 
      width: double.infinity,
      // height: 90,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 46, 0, 109),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Text.rich( 
        TextSpan(
          text: "A Summer Surprise\n",
          style: TextStyle(
            color: Colors.white
          ),
          children: [
            TextSpan(
              text: "Cashback 20%",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              )
            )
          ]
        ),
      ),
    );
  }
}

