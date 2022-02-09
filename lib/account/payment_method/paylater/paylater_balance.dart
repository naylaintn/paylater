import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/colors.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class PayLaterBalance extends StatefulWidget {
  const PayLaterBalance({Key? key}) : super(key: key);

  @override
  _PayLaterBalanceState createState() => _PayLaterBalanceState();
}

class _PayLaterBalanceState extends State<PayLaterBalance> {
  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: _width,
        height: _height/3,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(25)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 24,
              ),
            ]
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Limit Available", style: TextStyle(fontSize: 12)),
                      Text("Rp 2.500.000", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Limit Used", style: TextStyle(fontSize: 12)),
                      Text("Rp 2.500.000", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: CircularPercentIndicator(
                    lineWidth: 16,
                    percent: 0.5,
                    radius: 48,
                    animation: true,
                    animationDuration: 1000,
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: kSecondaryColor,
                  ),
                ),
              ),
              SizedBox(height: _height*0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total Limit", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  Text("Rp 5.000.000", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: _height*0.01),
              Align(
                alignment: Alignment.bottomRight,
                child: WidgetBills(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WidgetBills extends StatelessWidget {
  const WidgetBills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          FaIcon(FontAwesomeIcons.receipt, size: 15, color: kSecondaryColor),
          SizedBox(width: 5),
          Text("Bills", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: kSecondaryColor)),
        ],
      ),
    );
  }
}
