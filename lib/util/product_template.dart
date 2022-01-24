import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/colors.dart';
import 'package:get/get.dart';

Widget productTemplate (double _width, double _height) {
  return InkWell(
    onTap: (){Get.toNamed("/product_desc");},
    child: Container(
      margin: EdgeInsets.fromLTRB(0, 20, 10, 20),
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          color: scaffoldColor,
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 4,
              offset: const Offset(3, 6),
            )],
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack(
                children: [
                  Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 135,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Product Name", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                        Row(
                          children: const [
                            FaIcon(FontAwesomeIcons.solidStar, color: kPrimaryColor, size: 11),
                            Text("5.0", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Text("Brand", style: TextStyle(fontSize: 9, fontStyle: FontStyle.italic)),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Harga", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                        FaIcon(FontAwesomeIcons.heart, size: 13, color: kTextColor),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
  );
}