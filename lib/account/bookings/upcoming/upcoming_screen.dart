import 'package:flutter/material.dart';
import 'package:paylater_startup/account/bookings/upcoming/upcoming_template.dart';

class UpcomingScreen extends StatefulWidget {
  const UpcomingScreen({Key? key}) : super(key: key);

  @override
  _UpcomingScreenState createState() => _UpcomingScreenState();
}

class _UpcomingScreenState extends State<UpcomingScreen> {
  @override
  Widget build(BuildContext context) {

    final UpcomingData = [
      upcomingData(
        brand: 'Avinda Beauty Salon, Spa, & Massage',
        date: '24/02/2022',
        price: 'Rp 750.000',
        service: 'Creambath, Blow, Haircut',
        expire: '2/03/2022',
        location: 'xxxx',
      ),
      upcomingData(
        brand: 'BRAND NAME',
        date: '24/02/2022',
        price: 'Rp xxxxx',
        service: 'Creambath, Blow, Haircut',
        expire: '2/03/2022',
        location: 'xxxx',
      ),
      upcomingData(
        brand: 'BRAND NAME',
        date: '24/02/2022',
        price: 'Rp xxxxx',
        service: 'Creambath, Blow, Haircut',
        expire: '2/03/2022',
        location: 'xxxx',
      ),
      upcomingData(
        brand: 'BRAND NAME',
        date: '24/02/2022',
        price: 'Rp xxxxx',
        service: 'Creambath, Blow, Haircut',
        expire: '2/03/2022',
        location: 'xxxx',
      ),
      upcomingData(
        brand: 'BRAND NAME',
        date: '24/02/2022',
        price: 'Rp xxxxx',
        service: 'Creambath, Blow, Haircut',
        expire: '2/03/2022',
        location: 'xxxx',
      ),
    ];

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: _width,
      height: _height,
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 10),
        children: UpcomingData.map((e) => UpcomingTemplate(e)).toList(),
      ),
    );
  }
}

class upcomingData {
  final String date;
  final String expire;
  final String location;
  final String service;
  final String brand;
  final String price;

  upcomingData({
    required this.date,
    required this.expire,
    required this.location,
    required this.service,
    required this.brand,
    required this.price,
  });
}

