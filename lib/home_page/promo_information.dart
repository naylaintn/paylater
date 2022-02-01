import 'package:flutter/material.dart';

Widget promoInfo(double _width, double _height){

  List<promoInformation> promoData = [
    promoInformation(image: "assets/images/12_12.jpg"),
    promoInformation(image: "assets/images/mega_sale.jpg"),
    promoInformation(image: "assets/images/super_sale.jpg"),
  ];
  
  return SizedBox(
          height: 200,
          width: _width,
          child: ListView.builder(
            clipBehavior: Clip.none,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: promoData.length,
            itemBuilder: (context, index) {
              return  Container(
                width: _width*0.92,
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