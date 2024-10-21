import 'package:ecommercee/components/costum_navigation_bar.dart';
import 'package:ecommercee/constant.dart';
import 'package:ecommercee/enums.dart';
import 'package:ecommercee/screens/profile/components/body.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: appBar(context),
      body: Body(),
      bottomNavigationBar: CostumNavigationBar(menu: MenuState.profile),
    );
  }
}

AppBar appBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
      title:
          const Text(
            "Profile",
            style: TextStyle(
              color: kTextColor,
            ),
          ),
    );
  }
