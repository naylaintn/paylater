import 'package:flutter/material.dart';
import 'package:paylater_startup/util/colors.dart';

class Bills extends StatefulWidget {
  const Bills({Key? key}) : super(key: key);

  @override
  _BillsState createState() => _BillsState();
}

class _BillsState extends State<Bills> {
  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: _width,
        height: _height/7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 24,
              ),
            ]
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Amount to be paid this month", style: TextStyle(fontSize: 12)),
                  Text("Rp 500.000", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("Payment limit before 24 February 2022", style: TextStyle(fontSize: 12, color: Colors.redAccent)),
                ],
              ),
              Align(
               alignment: Alignment.bottomRight,
                child: Container(
                  width: 80,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: kSecondaryColor,
                  ),
                  child:  FlatButton(
                      onPressed: (){},
                      child: Text("Pay Now", style: TextStyle(color: Colors.white, fontSize: 12))
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
