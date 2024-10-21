import 'package:ecommercee/components/my_default_button.dart';
import 'package:ecommercee/constant.dart';
import 'package:ecommercee/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
        color: Colors.white,
        boxShadow: [
          BoxShadow(offset: Offset(0, -15),
          blurRadius: 20,
          color: const Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                height: getPropScreenWidth(40),
                width: getPropScreenWidth(40),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: SvgPicture.asset("assets/icons/receipt.svg",color: kPrimaryColor,),
              ),
              const Spacer(),
              const Text("Add voucher code"),
              const SizedBox(width: 10),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 12,
                color: Colors.black,
              )
            ],
          ),
          SizedBox(height: getPropScreenWidth(20),),
          Row(
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: "Total\n"),
                    TextSpan(
                      text: "\$337.15",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      )
                    )
                  ]
                )
              ),
              Spacer(),
              SizedBox(
                width: getPropScreenWidth(190),
                child: MyDefaultButton(text: "Checkout", press: (){}))
            ],
          )
        ],
      ),
    );
  }
}
