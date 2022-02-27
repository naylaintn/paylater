import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/colors.dart';

class ServiceHeader extends StatefulWidget {
  const ServiceHeader({Key? key}) : super(key: key);

  @override
  _ServiceHeaderState createState() => _ServiceHeaderState();
}

class _ServiceHeaderState extends State<ServiceHeader> {

  @override
  Widget build(BuildContext context) {

    List<serviceheader> serviceHeader = [
      serviceheader(image: "assets/images/avani_1.jpg"),
      serviceheader(image: "assets/images/avani_2.jpg"),
      serviceheader(image: "assets/images/avani_3.jpg"),
    ];

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            scrollDirection: Axis.horizontal,
            autoPlayCurve: Curves.fastOutSlowIn,
            height: _height/3,
            aspectRatio: 16 / 9,
            viewportFraction: 1,
            initialPage: 1,
          ),
          itemCount: serviceHeader.length,
          itemBuilder: (ctx, index, realIdx) =>
              Container(
                width: _width,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(serviceHeader[index].image),
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
      ],
    );
  }
}

class serviceheader {
  String image;

  serviceheader({
    this.image= "",
  });

}
