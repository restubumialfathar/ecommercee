import 'package:ecommercee/screens/complete_profile/complete_profile_screen.dart';
import 'package:ecommercee/screens/forgot_password/components/forgot_password.dart';
import 'package:ecommercee/screens/login_success/components/login_success_screen.dart';
import 'package:ecommercee/screens/sign_up/components/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommercee/screens/sign_in/sign_in_screen.dart';
import 'package:ecommercee/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
};
