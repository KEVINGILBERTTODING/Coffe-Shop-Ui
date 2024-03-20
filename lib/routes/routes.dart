import 'package:coffe_shop_ui/modules/auth/view/login_screen.dart';
import 'package:coffe_shop_ui/modules/auth/view/register_screen.dart';
import 'package:coffe_shop_ui/modules/home/view/home_screen.dart';
import 'package:coffe_shop_ui/modules/onboarding/view/onboarding_screen.dart';
import 'package:flutter/material.dart';

class RouteApp {
  // static const String home_page = '/home';
  static const String onBoardingScreen = '/onboarding';
  static const String signUpScreen = '/signUp';
  static const String signInScreen = '/signIn';
  static const String homeScreen = '/home';
  // static const String loginPage = '/login';
  static final Map<String, WidgetBuilder> routes = {
    onBoardingScreen: (context) => const OnboardingScreen(),
    signUpScreen: (context) => const RegisterScreen(),
    signInScreen: (context) => const LoginScreen(),
    homeScreen: (context) => const HomeScreen()
  };
}
