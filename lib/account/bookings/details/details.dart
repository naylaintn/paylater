import 'package:flutter/material.dart';
import 'package:paylater_startup/account/bookings/details/body.dart';
import 'package:paylater_startup/account/bookings/details/header.dart';

class DetailsTemplate extends StatelessWidget {
  const DetailsTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: _width,
        height: _height,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          children: [
            DetailsHeader(),
            SizedBox(height: _height*0.02),
            DetailsBody(),
          ],
        ),
      ),
    );
  }
}
