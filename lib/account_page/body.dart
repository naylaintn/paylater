import 'package:flutter/material.dart';
import 'package:paylater_startup/account/menu_list.dart';
import 'package:paylater_startup/account_page/two_boxes.dart';

class Body extends StatelessWidget {

  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TwoBoxes(width, height),
          SizedBox(height: width * 0.05,),
          MenuList(),
        ],
      ),
    );
  }
}
