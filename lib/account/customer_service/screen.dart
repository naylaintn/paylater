import 'package:flutter/material.dart';
import 'package:paylater_startup/util/colors.dart';

class CustomerServiceScreen extends StatelessWidget {
  const CustomerServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Messages", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kTextColor)),
      ),
      body: SizedBox(
        width: _width,
        height: _height,
        child: SingleChildScrollView(
          child: CustomerServiceScreen(),
        ),
      ),
    );
  }
}
