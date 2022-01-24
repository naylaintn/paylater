import 'package:flutter/material.dart';

Widget promoInfo(double _width, double _height){

  List<promoInformation> promoData = [
    promoInformation(image: "assets/images/sale_1.jpg"),
    promoInformation(image: "assets/images/sale_2.jpg"),
    promoInformation(image: "assets/images/sale_3.jpg"),
  ];
  
  return SizedBox(
          height: _height*0.35,
          width: _width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: promoData.length,
            itemBuilder: (context, index) {
              return  Container(
                width: _width*0.91,
                margin: const EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(promoData[index].image, fit: BoxFit.cover),
                ),
            );
          },
        ),
  );
}

class promoInformation {
  String image;

  promoInformation({
    this.image= "",
  });

}