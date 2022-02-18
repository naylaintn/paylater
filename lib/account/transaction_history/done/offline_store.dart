import 'package:flutter/material.dart';
import 'package:paylater_startup/account/transaction_history/done/offline_store_template.dart';

class OfflineStore extends StatefulWidget {
  const OfflineStore({Key? key}) : super(key: key);

  @override
  _OfflineStoreState createState() => _OfflineStoreState();
}

class _OfflineStoreState extends State<OfflineStore> {
  @override
  Widget build(BuildContext context) {

    final OfflinePaymentData = [
      OfflineData(
        product: 'Product Name',
        price: 'price',
        date: '12/02/2022',
        payment: 'Paylater',
        total: 'xxx',
        brand: 'Gucci',
        store: 'Plaza Indonesia',
      ),
      OfflineData(
        product: 'Product Name',
        price: 'price',
        date: '12/02/2022',
        payment: 'Paylater',
        total: 'xxx',
        brand: 'Gucci',
        store: 'Plaza Indonesia',
      ),
      OfflineData(
        product: 'Product Name',
        price: 'price',
        date: '12/02/2022',
        payment: 'Paylater',
        total: 'xxx',
        brand: 'Gucci',
        store: 'Plaza Indonesia',
      ),
      OfflineData(
        product: 'Product Name',
        price: 'price',
        date: '12/02/2022',
        payment: 'Paylater',
        total: 'xxx',
        brand: 'Gucci',
        store: 'Plaza Indonesia',
      ),
    ];

    return Column(
      children: OfflinePaymentData.map((context) => OfflineTemplate(context)).toList(),
    );
  }
}

class OfflineData {
  final String product;
  final String price;
  final String date;
  final String payment;
  final String total;
  final String brand;
  final String store;

  OfflineData ({
    required this.product,
    required this.price,
    required this.date,
    required this.payment,
    required this.total,
    required this.brand,
    required this.store,
  });
}
