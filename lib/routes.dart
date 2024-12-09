import 'package:ecommercee/screens/chat/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommercee/components/costum_navigation_bar.dart';
import 'package:ecommercee/model/products.dart';
import 'package:ecommercee/screens/cart/cart_screen.dart';
import 'package:ecommercee/screens/complete_profile/complete_profile_screen.dart';
import 'package:ecommercee/screens/details/detail_screen.dart';
import 'package:ecommercee/screens/favourite/favourite_screen.dart';
import 'package:ecommercee/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommercee/screens/home/home_screen.dart';
import 'package:ecommercee/screens/login_success/login_success_screen.dart';
import 'package:ecommercee/screens/otp/otp_screen.dart';
import 'package:ecommercee/screens/profile/profile_screen.dart';
import 'package:ecommercee/screens/sign_in/sign_in_screen.dart';
import 'package:ecommercee/screens/sign_up/sign_up_screen.dart';
import 'package:ecommercee/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailScreen.routeName: (context) {
    final product = ModalRoute.of(context)!.settings.arguments as Product;
    return DetailScreen(product: product);
  },
  CartScreen.routeName: (context) => const CartScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  CustomNavigationBar.routeName: (context) => const CustomNavigationBar(),
  // FavouriteScreen.routeName: (context) => const FavouriteScreen(),
  FavouriteScreen.routeName: (context) => const FavouriteScreen(),
  FavouriteScreen.routeName: (context) => const ChatScreen(),
};
