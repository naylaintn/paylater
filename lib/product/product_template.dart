import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:paylater_startup/util/colors.dart';

Widget productTemplate (double _width, double _height) {
  return InkWell(
    onTap: (){Get.toNamed("/product_desc");},
    child: Container(
      margin: EdgeInsets.fromLTRB(0, 20, 10, 10),
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 4,
              offset: const Offset(4, 6),
            )],
        ),

        ////////////////////////////////////////////////////////////////

        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
              ),

              //////////////////////////////////////////////////////////////

              Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Product Name", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                    const Text("Brand", style: TextStyle(fontSize: 9, fontStyle: FontStyle.italic)),
                    const SizedBox(height: 20),
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
      ),
  );
}