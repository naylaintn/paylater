import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:paylater_startup/dashboard/dashboard_page.dart';
import 'package:paylater_startup/login_screen/sign_in_screen.dart';
import 'package:paylater_startup/product_description_page/desc_screen.dart';
import 'package:paylater_startup/shopping_page/shopping_page.dart';
import 'package:paylater_startup/util/colors.dart';
import 'package:paylater_startup/util/theme.dart';

import 'category/category_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Paylater Startup',
      theme: theme(),
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      transitionDuration: const Duration(milliseconds: 1),
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(name: '/product_desc', page: () => productDesc_screen()),
        GetPage(name: '/category_screen', page: () => const CategoryPage()),
        GetPage(name: '/shopping_screen', page: () => const shopping_page()),
      ],
      home: const DashboardPage(),
      );
  }
}