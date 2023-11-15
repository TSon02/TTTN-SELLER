import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:trendy_treasures_seller/screens/auth_screen/login_screen/login_screen.dart';
import 'package:trendy_treasures_seller/screens/auth_screen/register_screen/register_screen.dart';
import 'package:trendy_treasures_seller/screens/auth_screen/successfull_screen.dart/successfull_screen.dart';
import 'package:trendy_treasures_seller/screens/menu_screen/menu_screen.dart';
import 'package:trendy_treasures_seller/screens/notification_screen/notification_screen.dart';
import 'package:trendy_treasures_seller/screens/onboarding_screen/onboarding_screen.dart';
import 'package:trendy_treasures_seller/screens/profile_screen/profile_screen.dart';
import 'package:trendy_treasures_seller/screens/splash_screen/splash_screen.dart';
import 'package:trendy_treasures_seller/screens/splash_screen/splash_screen_sc.dart';

class RouteGenerator {
  static const String splashScreen = '/';
  static const String splashScreenSc = '/splash-screen-sc';
  static const String onboardingScreen = '/onboarding-screen';
  static const String loginScreen = '/login-screen';
  static const String registerScreen = '/register-screen';
  static const String successfullScreen = '/successfull-screen';
  static const String homeScreen = '/home-screen';
  static const String cartScreen = '/cart-screen';
  static const String menuScreen = '/menu-screen';
  static const String notificationScreen = '/notifiaction-screen';
  static const String searchScreen = '/search-screen';
  static const String profileScreen = '/profile-screen';

  // persistent_bottom_nav_bar home screen
  static const String categoriesScreen = '/categories-screen';
  static const String addProductScreen = '/add-product-screen';
  static const String categoryProductsScreen = '/category-products-screen';
  // static const String shippingAdressScreen = '/shipping-adress-screen';

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) {
            return const SplashScreen();
          },
          settings: settings,
        );

      case splashScreenSc:
        return MaterialPageRoute(
          builder: (context) {
            return const SplashScreenSecond();
          },
          settings: settings,
        );

      case onboardingScreen:
        return MaterialPageRoute(
          builder: (context) {
            return const OnboardingScreen();
          },
          settings: settings,
        );

      case loginScreen:
        return MaterialPageRoute(
          builder: (context) {
            return LoginScreen.provider();
          },
          settings: settings,
        );

      case registerScreen:
        return MaterialPageRoute(
          builder: (context) {
            return RegisterScreen.provider();
          },
          settings: settings,
        );

      case successfullScreen:
        return MaterialPageRoute(
          builder: (context) {
            return const SuccessfullScreen();
          },
          settings: settings,
        );

      // case homeScreen:
      //   return MaterialPageRoute(
      //     builder: (context) {
      //       return const HomeScreen();
      //     },
      //     settings: settings,
      //   );

      case menuScreen:
        return MaterialPageRoute(
          builder: (context) {
            return const MenuScreen(
              key: Key('value'),
            );
          },
          settings: settings,
        );

      case notificationScreen:
        log('notification');
        return MaterialPageRoute(
          builder: (context) {
            return const NotificationScreen();
          },
          settings: settings,
        );

      case profileScreen:
        return MaterialPageRoute(
          builder: (context) {
            return const ProfileScreen();
          },
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (context) {
            log(settings.name!);
            return LoginScreen.provider();
          },
          settings: settings,
        );
    }
  }
}
