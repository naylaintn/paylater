import 'package:flutter/material.dart';
import 'package:paylater_startup/account/bills/bills_template.dart';
import 'package:paylater_startup/account/paylater/bills.dart';
import 'package:paylater_startup/util/colors.dart';

class BillsScreen extends StatelessWidget {
  const BillsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Bills", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kTextColor)),
      ),
      body: SizedBox(
        width: _width,
        height: _height,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 20),
          children: [
            Bills(),
            SizedBox(height: _height*0.01),
            BillsTemplate(),
            BillsTemplate(),
            BillsTemplate(),
            BillsTemplate(),
            BillsTemplate(),
            BillsTemplate(),
            BillsTemplate(),
            BillsTemplate(),
            BillsTemplate(),
            BillsTemplate(),
          ],
        ),
      ),
    );
  }
}
