import 'package:flutter/material.dart';
import 'package:paylater_startup/account/transaction_history/done/offline_store.dart';
import 'package:paylater_startup/util/colors.dart';

class OfflineTemplate extends StatelessWidget {
 final OfflineData offlineData;

 OfflineTemplate(this.offlineData);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Container(
      width: _width,
      height: _height/4,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.grey.withOpacity(0.3),
          ),
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("${offlineData.brand}", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${offlineData.product}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                  Text("${offlineData.price}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${offlineData.product}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                  Text("${offlineData.price}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${offlineData.product}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                  Text("${offlineData.price}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                ],
              ),
              Container(
                width: _width,
                height: _height*0.01,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: kTextColor),
                  ),
                ),
              ),
              SizedBox(height: _height*0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                  Text("${offlineData.total}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Buy Date", style: TextStyle(fontSize: 12)),
                  Text("${offlineData.date}", style: TextStyle(fontSize: 12)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Payment Method", style: TextStyle(fontSize: 12)),
                  Text("${offlineData.payment}", style: TextStyle(fontSize: 12)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Store Location", style: TextStyle(fontSize: 12)),
                  Text("${offlineData.store}", style: TextStyle(fontSize: 12)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
