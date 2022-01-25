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
          body: SafeArea(
            child: Stack(
              children: [
                IndexedStack(
                  index: controller.tabIndex,
                  children: const [
                    homeScreen(),
                    favoritePage(),
                    CategoryPage(),
                    cartPage(),
                    accountPage(),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                      color: scaffoldColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: BottomNavigationBar(
                        unselectedItemColor: kTextColor,
                        selectedItemColor: kPrimaryColor,
                        onTap: controller.changeTabIndex,
                        currentIndex: controller.tabIndex,
                        showSelectedLabels: false,
                        showUnselectedLabels: false,
                        type: BottomNavigationBarType.fixed,
                        backgroundColor: Colors.white,
                        elevation: 10,
                        items: const <BottomNavigationBarItem> [
                          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.home), label: ""),
                          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.solidHeart), label: ""),
                          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.list), label: ""),
                          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.shoppingCart), label: ""),
                          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.solidUser), label: ""),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // bottomNavigationBar: Container(
          //     margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          //     decoration: BoxDecoration(
          //       color: scaffoldColor,
          //       borderRadius: BorderRadius.circular(20),
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.grey.withOpacity(0.4),
          //           blurRadius: 10,
          //         ),
          //       ],
          //     ),
          //     child: ClipRRect(
          //       borderRadius: BorderRadius.circular(20),
          //       child: BottomNavigationBar(
          //         unselectedItemColor: kTextColor,
          //         selectedItemColor: kPrimaryColor,
          //         onTap: controller.changeTabIndex,
          //         currentIndex: controller.tabIndex,
          //         showSelectedLabels: false,
          //         showUnselectedLabels: false,
          //         type: BottomNavigationBarType.fixed,
          //         backgroundColor: Colors.white,
          //         elevation: 10,
          //         items: const <BottomNavigationBarItem> [
          //           BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.home), label: ""),
          //           BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.solidHeart), label: ""),
          //           BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.list), label: ""),
          //           BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.shoppingCart), label: ""),
          //           BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.solidUser), label: ""),
          //         ],
          //       ),
          //     ),
          // ),
        );
      },
    );
  }
}