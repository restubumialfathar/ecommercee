import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.icon, 
    required this.name, 
    required this.press,
  });

  final String icon;
  final String name;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 55,
        child: Column(
          children: [
            AspectRatio(aspectRatio: 1,
            child: Container(
              width: 55,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 213, 255, 232),
                borderRadius: BorderRadius.circular(10)
              ),
              child: SvgPicture.asset(icon,color: Color.fromARGB(255, 39, 97, 65),),
             ),
            ),
            SizedBox(height: 5),
            Text(name,
            textAlign: TextAlign.center,)
          ],
        ),
      ),
    );
  }
}