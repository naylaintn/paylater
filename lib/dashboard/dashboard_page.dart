import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:paylater_startup/account/account_page.dart';
import 'package:paylater_startup/cart/cart_page.dart';
import 'package:paylater_startup/category/category_page.dart';
import 'package:paylater_startup/favorites/favorite_page.dart';
import 'package:paylater_startup/home_page/home_page.dart';
import 'package:paylater_startup/util/colors.dart';

import '../controller/dashboard_controller.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetBuilder<DashboardController>(
      init: DashboardController(),
      builder: (controller) {
        return Scaffold(
          extendBody: true,
          body: SafeArea(
            child: IndexedStack(
                  index: controller.tabIndex,
                  children: const [
                    homeScreen(),
                    favoritePage(),
                    CategoryPage(),
                    cartPage(),
                    accountPage(),
                  ],
                ),
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                blurRadius: 10,
                  color: Colors.black.withOpacity(0.2),
              ),
              ]
            ),
            child: BottomNavigationBar(
              elevation: 0,
              unselectedItemColor: kTextColor,
              selectedItemColor: kPrimaryColor,
              onTap: controller.changeTabIndex,
              currentIndex: controller.tabIndex,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Color(0x00ffffff),
              items: const <BottomNavigationBarItem> [
                BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.home), label: ""),
                BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.solidHeart), label: ""),
                BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.list), label: ""),
                BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.shoppingCart), label: ""),
                BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.solidUser), label: ""),
              ],
            ),
          ),
        );
      },
    );
  }
}