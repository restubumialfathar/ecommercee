import 'package:ecommercee/components/costum_navigation_bar.dart';
import 'package:ecommercee/enums.dart';
import 'package:flutter/material.dart';
import 'package:ecommercee/screens/home/compenent/body.dart';




class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar: CostumNavigationBar(menu: MenuState.home,),
    );
  }
}

