import 'package:ecommercee/constant.dart';
import 'package:flutter/material.dart';
import 'package:ecommercee/size_config.dart';

class MyDefaultButton extends StatelessWidget {
  const MyDefaultButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        minimumSize: Size(double.infinity, getProportionateScreenHeight(56)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: getProportionateScreenWidth(20),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
