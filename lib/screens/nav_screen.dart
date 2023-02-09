import 'package:flutter/material.dart';
import 'package:flutter_realestate_ui/screens/first_screen.dart';
import 'package:flutter_realestate_ui/screens/second_screen.dart';
import 'package:flutter_realestate_ui/screens/third_screen.dart';
import 'package:flutter_realestate_ui/tools/colors.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class NavScreen extends StatelessWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PersistentTabController controller;

    controller = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
      return [
        const FirstScreen(),
        const FirstScreen(),
        const SecondScreen(),
        const ThirdScreen(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.home),
          inactiveIcon: const Icon(Icons.home_outlined),
          activeColorPrimary: redColor,
          inactiveColorPrimary: greyColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.location_on),
          inactiveIcon: const Icon(Icons.location_on_outlined),
          activeColorPrimary: redColor,
          inactiveColorPrimary: greyColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.calendar_month_rounded),
          inactiveIcon: const Icon(Icons.calendar_month_outlined),
          activeColorPrimary: redColor,
          inactiveColorPrimary: greyColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.person),
          inactiveIcon: const Icon(Icons.person_outline_rounded),
          activeColorPrimary: redColor,
          inactiveColorPrimary: greyColor,
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: primaryColor,
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      // Default is Colors.white.
      handleAndroidBackButtonPress: true,
      // Default is true.
      resizeToAvoidBottomInset: true,
      // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true,
      // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(15.0),

      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style12, // Choose the nav bar style with this property.
    );
  }
}
