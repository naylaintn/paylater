import 'package:flutter/material.dart';
import 'package:paylater_startup/account/payment_method/paylater/transaction_design.dart';
import 'package:paylater_startup/util/colors.dart';

class PayLater_Transactions extends StatefulWidget {
  const PayLater_Transactions({Key? key}) : super(key: key);


  @override
  _PayLater_TransactionsState createState() => _PayLater_TransactionsState();
}

class _PayLater_TransactionsState extends State<PayLater_Transactions> {
  @override
  Widget build(BuildContext context) {
    final transactionsPayLaterData = [
      TransactionPayLater(
          logo: 'playstation',
          title: 'Sony Playstation',
          description: 'Fifa 2022 Game',
          date: 'March 14, 2021',
          value: -53.95
      ),
      TransactionPayLater(
          logo: 'coffee',
          title: 'Coffee Shop',
          description: 'Starbucks',
          date: 'April 12, 2021',
          value: -5.42
      ),
      TransactionPayLater(
          logo: 'building',
          title: 'Flat Rental',
          description: 'Apartment Rental',
          date: 'April 09, 2021',
          value: -445.00
      ),
      TransactionPayLater(
          logo: 'playstation',
          title: 'Sony Playstation',
          description: 'Fifa 2022 Game',
          date: 'March 14, 2021',
          value: -53.95
      ),
      TransactionPayLater(
          logo: 'coffee',
          title: 'Coffee Shop',
          description: 'Starbucks',
          date: 'April 12, 2021',
          value: -5.42
      ),
      TransactionPayLater(
          logo: 'building',
          title: 'Flat Rental',
          description: 'Apartment Rental',
          date: 'April 09, 2021',
          value: -445.00
      ),
    ];

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Container(
      color: scaffoldColor,
      width: _width,
      // height: _height,
      child: Column(
        children: transactionsPayLaterData.map((context) => PayLater_TransactionDesign(context)).toList(),
      ),
    );
  }
}

class TransactionPayLater {
  final String logo;
  final String title;
  final String description;
  final String date;
  final double value;

  TransactionPayLater({
    required this.logo,
    required this.title,
    required this.description,
    required this.date,
    required this.value,
  });
}