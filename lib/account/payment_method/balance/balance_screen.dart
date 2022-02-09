import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/account/payment_method/balance/balance_header.dart';
import 'package:paylater_startup/account/payment_method/balance/transactions.dart';
import 'package:paylater_startup/util/colors.dart';

import 'cards_carousel.dart';

class BalanceScreen extends StatelessWidget {
  const BalanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 2,
        backgroundColor: scaffoldColor,
        title: const Text("Account Balance", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: kTextColor)),
      ),
      body: SafeArea(
        child: SizedBox(
          width: _width,
          height: _height,
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 20),
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Balance", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: _height*0.02),
              BalanceHeader(),
              SizedBox(height: _height*0.04),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Cards", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Text("Add New", style: TextStyle(fontSize: 15)),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: SvgPicture.asset("assets/svg/plus.svg", color: kTextColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: _height*0.02),
              const CardsCarousel(),
              SizedBox(height: _height*0.04),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Activities", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: _height*0.02),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: _width*0.27,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: kSecondaryColor.withOpacity(0.1),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.paperPlane, size: 30, color: kSecondaryColor),
                            Text("Pay", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: kSecondaryColor)),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      width: _width*0.27,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: kColor3.withOpacity(0.1),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.plus, size: 30, color: kColor3),
                            Text("Top Up", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: kColor3)),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      width: _width*0.27,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        color: kColor2.withOpacity(0.1),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.creditCard, size: 30, color: kTextColor),
                            Text("Payment Methods", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: kTextColor), textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: _height*0.04),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Transactions", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    SvgPicture.asset("assets/svg/more.svg", color: kTextColor),
                  ],
                ),
              ),
              SizedBox(height: _height*0.02),
              Transactions(),
              SizedBox(height: _height*0.02),
            ],
          ),
        ),
      ),
    );
  }
}

