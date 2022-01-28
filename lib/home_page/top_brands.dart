import 'package:flutter/material.dart';

Widget topBrands(double _width, double _height){

  List<topBrand1> brandData = [
    topBrand1(image1: "assets/images/balenciaga.jpg"),
    topBrand1(image1: "assets/images/dobro.jpg"),
    topBrand1(image1: "assets/images/gucci.jpg"),
    topBrand1(image1: "assets/images/versace_2.jpg"),
  ];

  List<topBrand2> brandData2 = [
    topBrand2(image2: "assets/images/dolce.jpg"),
    topBrand2(image2: "assets/images/chanel.jpg"),
    topBrand2(image2: "assets/images/jooste.jpg"),
    topBrand2(image2: "assets/images/prada.jpg"),
  ];

  return SizedBox(
    height: 240,
    width: _width,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: brandData.length,
      itemBuilder: (context, index) {
        return  Column(
          children: [
            Container(
              width: 170,
              height: 110,
              margin: const EdgeInsets.only(right: 10),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(brandData[index].image1),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF343434).withOpacity(0.4),
                            Color(0xFF343434).withOpacity(0.15),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 170,
              height: 110,
              margin: const EdgeInsets.only(right: 10, top: 10),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(brandData2[index].image2),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF343434).withOpacity(0.4),
                            Color(0xFF343434).withOpacity(0.15),
                          ]),
                    ),
                  ),
                ],
              ),
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