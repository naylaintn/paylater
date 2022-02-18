import 'package:flutter/material.dart';

import 'delivery_template.dart';

class Delivery extends StatefulWidget {
  const Delivery({Key? key}) : super(key: key);

  @override
  _DeliveryState createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  @override
  Widget build(BuildContext context) {

    final DeliveryData = [
      HistoryData(
        pic1: 'accessories',
        pic2: 'bag',
        pic3: 'beauty',
        pic4: 'camera',
        number: '0217123023713294',
        date: '12/02/2022',
        total: '4',
      ),
      HistoryData(
        pic1: 'clothes',
        pic2: 'clothes2',
        pic3: 'fashion',
        pic4: 'fashion2',
        number: '0217776436587634',
        date: '11/02/2022',
        total: '4',
      ),
      HistoryData(
        pic1: 'food',
        pic2: 'gaming',
        pic3: 'gaming2',
        pic4: 'interior',
        number: '0253464398765879',
        date: '10/02/2022',
        total: '4',
      ),
      HistoryData(
        pic1: 'food',
        pic2: 'gaming',
        pic3: 'gaming2',
        pic4: 'interior',
        number: '0253464398765879',
        date: '10/02/2022',
        total: '4',
      ),
      HistoryData(
        pic1: 'food',
        pic2: 'gaming',
        pic3: 'gaming2',
        pic4: 'interior',
        number: '0253464398765879',
        date: '10/02/2022',
        total: '4',
      ),
    ];

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Column(
      children: DeliveryData.map((context) => DeliveryTemplate(context)).toList(),
    );
  }
}

class HistoryData {
  final String pic1;
  final String pic2;
  final String pic3;
  final String pic4;
  final String number;
  final String date;
  final String total;

  HistoryData ({
    required this.pic1,
    required this.pic2,
    required this.pic3,
    required this.pic4,
    required this.number,
    required this.date,
    required this.total,
  });

}

