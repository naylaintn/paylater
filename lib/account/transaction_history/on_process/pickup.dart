import 'package:flutter/material.dart';
import 'package:paylater_startup/account/transaction_history/on_process/pickup_template.dart';

class PickUp extends StatefulWidget {
  const PickUp({Key? key}) : super(key: key);

  @override
  _PickUpState createState() => _PickUpState();
}

class _PickUpState extends State<PickUp> {
  @override
  Widget build(BuildContext context) {

    final PickupData = [
      HistoryData(
        pic1: 'accessories',
        pic2: 'bag',
        pic3: 'beauty',
        pic4: 'camera',
        number: '0217123023713294',
        date: '12/02/2022',
        total: '4',
        brand: 'Gucci',
        store: 'Plaza Indonesia',
      ),
      HistoryData(
        pic1: 'accessories',
        pic2: 'bag',
        pic3: 'beauty',
        pic4: 'camera',
        number: '0217123023713294',
        date: '12/02/2022',
        total: '4',
        brand: 'Nike',
        store: 'Plaza Indonesia',
      ),
      HistoryData(
        pic1: 'accessories',
        pic2: 'bag',
        pic3: 'beauty',
        pic4: 'camera',
        number: '0217123023713294',
        date: '12/02/2022',
        total: '4',
        brand: 'Adidas',
        store: 'Plaza Indonesia',
      ),
      HistoryData(
        pic1: 'accessories',
        pic2: 'bag',
        pic3: 'beauty',
        pic4: 'camera',
        number: '0217123023713294',
        date: '12/02/2022',
        total: '4',
        brand: 'Puma',
        store: 'Plaza Indonesia',
      ),
      HistoryData(
        pic1: 'accessories',
        pic2: 'bag',
        pic3: 'beauty',
        pic4: 'camera',
        number: '0217123023713294',
        date: '12/02/2022',
        total: '4',
        brand: 'Puma',
        store: 'Plaza Indonesia',
      ),
      HistoryData(
        pic1: 'accessories',
        pic2: 'bag',
        pic3: 'beauty',
        pic4: 'camera',
        number: '0217123023713294',
        date: '12/02/2022',
        total: '4',
        brand: 'Puma',
        store: 'Plaza Indonesia',
      ),
    ];


    return Column(
      children: PickupData.map((context) => PickUpTemplate(context)).toList(),
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
  final String brand;
  final String store;

  HistoryData ({
    required this.pic1,
    required this.pic2,
    required this.pic3,
    required this.pic4,
    required this.number,
    required this.date,
    required this.total,
    required this.brand,
    required this.store,
  });

}