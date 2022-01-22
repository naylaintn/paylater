import 'package:flutter/material.dart';

Widget topBrands(double _width, double _height){

  List<topBrand1> brandData = [
    topBrand1(image1: "images/balenciaga.jpg"),
    topBrand1(image1: "images/dobro.jpg"),
    topBrand1(image1: "images/gucci.jpg"),
    topBrand1(image1: "images/versace_2.jpg"),
  ];

  List<topBrand2> brandData2 = [
    topBrand2(image2: "images/dolce.jpg"),
    topBrand2(image2: "images/chanel.jpg"),
    topBrand2(image2: "images/jooste.jpg"),
    topBrand2(image2: "images/prada.jpg"),
  ];

  return SizedBox(
    height: _height*0.4,
    width: _width,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: brandData.length,
      itemBuilder: (context, index) {
        return  Column(
          children: [
            Container(
              width: 120,
              height: 120,
              margin: const EdgeInsets.only(right: 10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Image.asset(brandData[index].image1, fit: BoxFit.cover),
            ),
            Container(
              width: 120,
              height: 120,
              margin: const EdgeInsets.only(right: 10, top: 10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Image.asset(brandData2[index].image2, fit: BoxFit.cover),
            ),
          ],
        );
        },
    ),
  );
}

class topBrand1 {
  String image1;

  topBrand1({
    this.image1= "",
  });

}

class topBrand2 {
  String image2;

  topBrand2({
    this.image2= "",
  });

}