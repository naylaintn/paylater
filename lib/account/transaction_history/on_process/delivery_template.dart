import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paylater_startup/util/colors.dart';

import 'delivery.dart';

class DeliveryTemplate extends StatelessWidget {

  final HistoryData historydata;

  DeliveryTemplate(this.historydata);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Container(
      width: _width,
      height: _height/3,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            color: Colors.grey.withOpacity(0.4),
          ),
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Row(
                children: [
                  Text("Order Number: ${historydata.number}", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                children: [
                  Text('Order Date: ${historydata.date}', style: TextStyle(fontSize: 12)),
                  SizedBox(width: 10),
                  Text("|", style: TextStyle(fontSize: 12)),
                  SizedBox(width: 10),
                  Text('Total Item: ${historydata.total}', style: TextStyle(fontSize: 12)),
                ],
              ),
            ],
          ),
          SizedBox(
            width: _width,
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/images/${historydata.pic1}.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/images/${historydata.pic2}.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/images/${historydata.pic3}.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/images/${historydata.pic4}.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (){},
                child: Text("Details"),
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
              GestureDetector(
                onTap: (){},
                child: Text("Atur Pembatalan"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
