import 'package:flutter/material.dart';
import 'package:paylater_startup/account/paylater/bills.dart';
import 'package:paylater_startup/account/paylater/paylater_balance.dart';
import 'package:paylater_startup/account/paylater/paylater_transactions.dart';
import 'package:paylater_startup/util/colors.dart';

class PayLaterScreen extends StatelessWidget {
  const PayLaterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 2,
        backgroundColor: scaffoldColor,
        title: const Text("PayLater", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: kTextColor)),
      ),
      body: SafeArea(
        child: SizedBox(
          width: _width,
          height: _height,
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 20),
            physics: ClampingScrollPhysics(),
            children: [
              PayLaterBalance(),
              SizedBox(height: _height*0.04),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Bills", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: _height*0.02),
              Bills(),
              SizedBox(height: _height*0.04),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Transactions", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: _height*0.02),
              PayLater_Transactions(),
            ],
          ),
        ),
      ),
    );
  }
}
