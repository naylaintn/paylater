import 'package:flutter/material.dart';
import 'package:paylater_startup/account/balance/transaction_design.dart';
import 'package:paylater_startup/util/colors.dart';

class Transactions extends StatefulWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {

    final transactionsMockData = [
      Transaction(
          logo: 'playstation',
          title: 'Sony Playstation',
          description: 'Fifa 2022 Game',
          date: 'March 14, 2021',
          value: -53.95
      ),
      Transaction(
          logo: 'bank',
          title: 'Bank Transfer',
          description: 'Top Up',
          date: 'April 14, 2021',
          value: 2500.95
      ),
      Transaction(
          logo: 'coffee',
          title: 'Coffee Shop',
          description: 'Starbucks',
          date: 'April 12, 2021',
          value: -5.42
      ),
      Transaction(
          logo: 'building',
          title: 'Flat Rental',
          description: 'Apartment Rental',
          date: 'April 09, 2021',
          value: -445.00
      ),
      Transaction(
          logo: 'playstation',
          title: 'Sony Playstation',
          description: 'Fifa 2022 Game',
          date: 'March 14, 2021',
          value: -53.95
      ),
      Transaction(
          logo: 'bank',
          title: 'Bank Transfer',
          description: 'Top Up',
          date: 'April 14, 2021',
          value: 2500.95
      ),
      Transaction(
          logo: 'coffee',
          title: 'Coffee Shop',
          description: 'Starbucks',
          date: 'April 12, 2021',
          value: -5.42
      ),
      Transaction(
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
        children: transactionsMockData.map((e) => TransactionItem(e)).toList(),
      ),
    );
  }
}

class Transaction {
  final String logo;
  final String title;
  final String description;
  final String date;
  final double value;

  Transaction({
    required this.logo,
    required this.title,
    required this.description,
    required this.date,
    required this.value,
  });
}
