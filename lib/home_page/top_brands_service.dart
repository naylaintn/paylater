import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget TopBrandsService(double _width, double _height){

  List<topBrand1> brandData = [
    topBrand1(image1: "assets/images/zap.png"),
    topBrand1(image1: "assets/images/irwan.jpeg"),
  ];

  List<topBrand2> brandData2 = [
    topBrand2(image2: "assets/images/avani.png"),
    topBrand2(image2: "assets/images/avani_dental.jpg"),
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
            InkWell(
              onTap: (){Get.toNamed("/servicestore_screen");},
              child: Container(
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
            ),
            Container(
              width: 170,
              height: 110,
              margin: const EdgeInsets.only(right: 10, top: 10),
              child: Stack(
                children: [
                  InkWell(
                    onTap: (){Get.toNamed("/store_screen");},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(brandData2[index].image2),
                          fit: BoxFit.cover,
                        ),
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
