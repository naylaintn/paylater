import 'package:flutter/material.dart';

Widget promoInfo(double _width, double _height){

  List<promoInformation> promoData = [
    promoInformation(image: "images/sale_1.jpg"),
    promoInformation(image: "images/sale_2.jpg"),
    promoInformation(image: "images/sale_3.jpg"),
  ];
  
  return Row(
    children: [
      Expanded(
        child: SizedBox(
          height: _height*0.3,
          width: _width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: promoData.length,
            itemBuilder: (context, index) {
              return  Container(
                width: _width*0.91,
                margin: const EdgeInsets.only(right: 15),
                decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Image(
                  image: AssetImage(promoData[index].image),
                    fit: BoxFit.cover
                ),
            );
          },
        ),
      ),
      ),
    ],
  );
}

class promoInformation {
  String image;

  promoInformation({
    this.image= "",
  });

}