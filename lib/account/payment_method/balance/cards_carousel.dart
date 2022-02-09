import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:paylater_startup/util/colors.dart';

import 'card_design.dart';

class CardsCarousel extends StatefulWidget {
  const CardsCarousel({Key? key}) : super(key: key);

  @override
  _CardsCarouselState createState() => _CardsCarouselState();
}

class _CardsCarouselState extends State<CardsCarousel> {

  int _cardIndex = 1;

  @override
  Widget build(BuildContext context) {

    final cardsMockData = [
      CardDetail(
        number: '8842  2394  2399 1293',
        name: 'Emma Larsen',
        expiry: '06/22',
        background: 'assets/images/card_bg_alt.png',
      ),
      CardDetail(
        number: '8842  2394  2399 1294',
        name: 'Emma Larsen',
        expiry: '06/22',
        background: 'assets/images/card_bg.png',
      ),
      CardDetail(
        number: '8842  2394  2399 1295',
        name: 'Emma Larsen',
        expiry: '06/22',
        background: 'assets/images/card_bg_alt.png',
      ),
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
            height: _height/4,
            aspectRatio: 16/9,
            viewportFraction: 0.8,
            initialPage: 1,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _cardIndex = index;
              });
            },
          ),
          itemCount: cardsMockData.length,
          itemBuilder: (ctx, index, realIdx) =>
              BankCard(cardsMockData[index]),
        ),
        SizedBox(height: _height*0.03),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: cardsMockData.map((card) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: cardsMockData[this._cardIndex].number ==
                    card.number
                    ? kPrimaryColor
                    : Colors.grey.withOpacity(0.3),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class CardDetail {
  final String number;
  final String name;
  final String expiry;
  final String background;

  CardDetail({
    required this.number,
    required this.name,
    required this.expiry,
    required this.background,
  });
}
