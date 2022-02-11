import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/colors.dart';

class BalanceHeader extends StatefulWidget {
  const BalanceHeader({Key? key}) : super(key: key);

  @override
  _BalanceHeaderState createState() => _BalanceHeaderState();
}

class _BalanceHeaderState extends State<BalanceHeader> {
  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: _width,
        height: _height/4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(35)),
          color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 24,
              ),
            ]
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Nayla Intan Kamilia", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    Text("Logo", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text("Balance Value", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: kSecondaryColor)),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Nomor Virtual Account", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    FaIcon(FontAwesomeIcons.copy, size: 15)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
