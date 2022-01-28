import 'package:flutter/material.dart';
import 'package:paylater_startup/account_page/menu_list.dart';
import 'package:paylater_startup/account_page/two_boxes.dart';

class Body extends StatelessWidget {
  double width;
  double height;

  Body(this.width, this.height, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TwoBoxes(width, height),
          MenuList(),
        ],
      ),
    );
  }
}
