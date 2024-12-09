import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Pastikan import yang benar
import 'package:ecommercee/size_config.dart';

class ItemCategory extends StatelessWidget {
  const ItemCategory({
    super.key,
    required this.name,
    required this.icon,
    this.iconColor = const Color.fromARGB(255, 39, 97, 65), // Default color
  });

  final String name, icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getPropScreenWidth(55),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(getPropScreenWidth(15)),
            height: getPropScreenWidth(55),
            width: getPropScreenWidth(55),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 177, 229, 200),
              borderRadius: BorderRadius.circular(15),
            ),
            child: SvgPicture.asset(
              icon,
              color: iconColor, // Warna icon SVG
            ),
          ),
          SizedBox(height: getPropScreenHeight(5)),
          Text(
            name,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
