import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:paylater_startup/util/colors.dart';

class promoInfo extends StatefulWidget {
  const promoInfo({Key? key}) : super(key: key);

  @override
  _promoInfoState createState() => _promoInfoState();
}

class _promoInfoState extends State<promoInfo> {

  int _promoIndex = 1;

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    List<promoInformation> promoData = [
      promoInformation(image: "assets/images/12_12.jpg"),
      promoInformation(image: "assets/images/mega_sale.jpg"),
      promoInformation(image: "assets/images/super_sale.jpg"),
    ];

    return SizedBox(
      height: _height / 3,
      width: _width,
      child: Column(
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              scrollDirection: Axis.horizontal,
              autoPlayCurve: Curves.fastOutSlowIn,
              height: _height / 4,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 1,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _promoIndex = index;
                });
              },
            ),
            itemCount: promoData.length,
            itemBuilder: (ctx, index, realIdx) =>
                Container(
                  width: _width,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                        promoData[index].image, fit: BoxFit.cover),
                  ),
                ),
          ),
          SizedBox(height: _height * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: promoData.map((card) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: promoData[_promoIndex].image ==
                      card.image
                      ? kPrimaryColor
                      : Colors.grey.withOpacity(0.3),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class promoInformation {
  String image;

  promoInformation({
    this.image= "",
  });

}




