import 'package:ecommercee/constant.dart';
import 'package:ecommercee/enums.dart';
import 'package:ecommercee/screens/home/home_screen.dart';
import 'package:ecommercee/screens/profile/profile_screen.dart';
import 'package:ecommercee/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CostumNavigationBar extends StatelessWidget {
  const CostumNavigationBar({
    super.key,
    required this.menu,
  });

  final MenuState menu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getPropScreenWidth(15),
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
            icon: SvgPicture.asset("assets/icons/Shop Icon.svg",
            color: MenuState.home == menu? kPrimaryColor : inActiveIconColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/Heart Icon.svg"),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),
          ),
          IconButton(
             onPressed: () {
              Navigator.pushNamed(context, ProfileScreen.routeName);
            },
            icon: SvgPicture.asset("assets/icons/User Icon.svg",
            color: MenuState.profile == menu? kPrimaryColor : inActiveIconColor,
            ),
          ),
        ],
      ),
    );
  }
}
