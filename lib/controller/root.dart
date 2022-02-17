import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:paylater_startup/controller/auth_controller.dart';
import 'package:paylater_startup/controller/user_controller.dart';
import 'package:paylater_startup/dashboard/dashboard_page.dart';
import 'package:paylater_startup/login_screen/sign_in_screen.dart';

class Root extends GetWidget<AuthController>{
  @override
  Widget build(BuildContext context) {
    return GetX(
      initState: (_) async {
        Get.put<UserController>(UserController());
      },
      builder: (_) {
        if (Get.find<AuthController>().user.userId != "") {
          return DashboardPage();
        } else {
          return SignInScreen();
        }
      },
    );
  }

}