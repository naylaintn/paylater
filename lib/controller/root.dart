import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:paylater_startup/controller/auth_controller.dart';
import 'package:paylater_startup/controller/user_controller.dart';
import 'package:paylater_startup/dashboard/dashboard_page.dart';
import 'package:paylater_startup/login_screen/sign_in_screen.dart';

class Root extends GetWidget<AuthController>{
  @override
  Widget build(BuildContext context) {

    // print("error di mana 1");

    return GetX<AuthController>(
      initState: (_) async {
        // print("error di mana 2");
        Get.put<UserController>(UserController());
      },
      builder: (_) {
        // print("error di mana 3");
        // print(Get.find<AuthController>().user.userId.isNotEmpty);
        if (Get.find<AuthController>().user.userId.isNotEmpty) {
          return DashboardPage();
        } else {
          return SignInScreen();
        }
      },
    );
  }

}