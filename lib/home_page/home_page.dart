import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paylater_startup/controller/user_controller.dart';
import 'package:paylater_startup/home_page/header.dart';
import 'package:paylater_startup/home_page/home_body.dart';
import 'package:paylater_startup/models/user_data.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    UserController userController = Get.put(UserController());
    UserModel user = userController.user;

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: _width,
          height: _height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Header(_width, _height, user.name.isNotEmpty ? user.name : user.userId.substring(0,6)),
                HomeBody(_width, _height),
              ],
            ),
          ),
        ),
      ),
    );
  }
}