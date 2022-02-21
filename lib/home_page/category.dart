import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:paylater_startup/util/colors.dart';

Widget categoryList(double _width, double _height) {

  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    width: _width,
    height: _height*0.1,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: (){Get.toNamed("/category_screen");},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              width: _width/2,
              height: _height*0.1,
              decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    child: SvgPicture.asset("assets/svg/store.svg", color: kPrimaryColor),
                  ),

                  Text("Online Store", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: kPrimaryColor)),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: _width*0.01),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: _width/2,
            height: _height*0.1,
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 20,
                  height: 20,
                  child: SvgPicture.asset("assets/svg/service.svg", color: kPrimaryColor),
                ),
                Text("Experience", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: kPrimaryColor)),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}