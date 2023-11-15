import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:trendy_treasures_seller/screens/home_screen/home_screen.dart';
import 'package:trendy_treasures_seller/screens/my_products_screen/my_products_screen.dart';
import 'package:trendy_treasures_seller/screens/notification_screen/notification_screen.dart';
import 'package:trendy_treasures_seller/screens/orders_screen/orders_screen.dart';
import 'package:trendy_treasures_seller/screens/profile_screen/profile_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PersistentTabController controller =
        PersistentTabController(initialIndex: 0);

    return PersistentTabView(context,
        controller: controller,
        screens: _buildScreens(controller),
        navBarHeight: 80,
        items: _navBarsItems(controller),
        confineInSafeArea: true,
        // backgroundColor: Colors.grey[300]!, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: const NavBarDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(36), topRight: Radius.circular(36)),
            colorBehindNavBar: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                spreadRadius: -3,
                color: Colors.grey,
              ),
            ]),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 500),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 500),
        ),
        navBarStyle:
            NavBarStyle.style1 // Choose the nav bar style with this property.
        );
  }

  List<Widget> _buildScreens(PersistentTabController controller) {
    return [
      HomeScreen.provider(controller),
      MyProductsScreen.provider(),
      OrdersScreen.provider(),
      const NotificationScreen(),
      const ProfileScreen()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems(
      PersistentTabController controller) {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: CupertinoColors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          onGenerateRoute: (settings) {
            log(settings.name!);
            switch (settings.name) {
              default:
                return MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen(
                      controller: controller,
                    );
                  },
                  settings: settings,
                );
            }
          },
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset(
          'assets/images/products.png',
          width: 24,
          color: Colors.black,
        ),
        title: ("Products"),
        activeColorPrimary: CupertinoColors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        inactiveIcon: Image.asset(
          'assets/images/products.png',
          width: 24,
          color: Colors.grey[600],
        ),
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.square_list),
        title: ("Orders"),
        activeColorPrimary: CupertinoColors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.bell),
        title: ("News"),
        activeColorPrimary: CupertinoColors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.person),
        title: ("Profile"),
        activeColorPrimary: CupertinoColors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ];
  }
}
