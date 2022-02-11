import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:paylater_startup/util/colors.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: _width,
        height: _height,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [

                //Account Balance
                GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              FaIcon(FontAwesomeIcons.wallet, size: 18),
                              SizedBox(width: _width*0.02),
                              Text("Account Balance", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Balance:", style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic)),
                              SizedBox(width: _width*0.01),
                              Text("Rp 5.000.000", style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic)),
                            ],
                          ),
                        ],
                      ),

                      FaIcon(FontAwesomeIcons.arrowRight, size: 15),
                    ],
                  ),
                ),
                SizedBox(height: _height*0.05),

                //Debit or Credit Card
                Column(
                  children: [
                    Row(
                      children: [
                        FaIcon(FontAwesomeIcons.creditCard, size: 18),
                        SizedBox(width: _width*0.02),
                        Text("Debit/Credit Card", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: _height*0.02),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("BCA", style: TextStyle(fontSize: 15)),
                                  Text("Credit Card", style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic)),
                                ],
                              ),
                              FaIcon(FontAwesomeIcons.arrowRight, size: 15),
                            ],
                          ),
                        ),

                        Container(
                          width: _width,
                          height: _height*0.02,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: kTextColor),
                            ),
                          ),
                        ),
                        SizedBox(height: _height*0.02),

                        //BNI
                        GestureDetector(
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("BNI", style: TextStyle(fontSize: 15)),
                                  Text("Debit Card", style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic)),
                                ],
                              ),
                              FaIcon(FontAwesomeIcons.arrowRight, size: 15),
                            ],
                          ),
                        ),

                        Container(
                          width: _width,
                          height: _height*0.02,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: kTextColor),
                            ),
                          ),
                        ),
                        SizedBox(height: _height*0.02),

                        //Mandiri
                        GestureDetector(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Mandiri", style: TextStyle(fontSize: 15)),
                                  Text("Debit Card", style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic)),
                                ],
                              ),
                              FaIcon(FontAwesomeIcons.arrowRight, size: 15),
                            ],
                          ),
                        ),

                        Container(
                          width: _width,
                          height: _height*0.02,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: kTextColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: _height*0.05),

                //Transfer
                Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            FaIcon(FontAwesomeIcons.paperPlane, size: 18),
                            SizedBox(width: _width*0.02),
                            Text("Transfer", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: _height*0.02),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        //BCA
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("BCA", style: TextStyle(fontSize: 15)),
                            FaIcon(FontAwesomeIcons.arrowRight, size: 15),
                          ],
                        ),

                        Container(
                          width: _width,
                          height: _height*0.02,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: kTextColor),
                            ),
                          ),
                        ),
                        SizedBox(height: _height*0.02),

                        //BNI
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("BNI", style: TextStyle(fontSize: 15)),
                            FaIcon(FontAwesomeIcons.arrowRight, size: 15),
                          ],
                        ),
                        Container(
                          width: _width,
                          height: _height*0.02,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: kTextColor),
                            ),
                          ),
                        ),
                        SizedBox(height: _height*0.02),


                        //BRI
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("BRI", style: TextStyle(fontSize: 15)),
                            FaIcon(FontAwesomeIcons.arrowRight, size: 15),
                          ],
                        ),
                        Container(
                          width: _width,
                          height: _height*0.02,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: kTextColor),
                            ),
                          ),
                        ),
                        SizedBox(height: _height*0.02),

                        //Jenius
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Jenius", style: TextStyle(fontSize: 15)),
                            FaIcon(FontAwesomeIcons.arrowRight, size: 15),
                          ],
                        ),
                        Container(
                          width: _width,
                          height: _height*0.02,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: kTextColor),
                            ),
                          ),
                        ),
                        SizedBox(height: _height*0.02),


                        //Mandiri
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Mandiri", style: TextStyle(fontSize: 15)),
                            FaIcon(FontAwesomeIcons.arrowRight, size: 15),
                          ],
                        ),
                        Container(
                          width: _width,
                          height: _height*0.02,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: kTextColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
