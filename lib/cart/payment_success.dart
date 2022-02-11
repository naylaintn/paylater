import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/colors.dart';
import 'package:get/get.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  kColor1,
                  kSecondaryColor,
                ]),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: _height/3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kSecondaryColor.withOpacity(0.2),
                              ),
                              child: Center(
                                child: FaIcon(FontAwesomeIcons.shareAlt, size: 18, color: kTextColor),
                              ),
                            ),
                            SizedBox(width: _width*0.03),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kSecondaryColor.withOpacity(0.2),
                              ),
                              child: Center(
                                child: FaIcon(FontAwesomeIcons.print, size: 18, color: kTextColor),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          width: _width*0.5,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(35)),
                            color: kSecondaryColor,
                          ),
                          child: FlatButton(
                            onPressed: (){Get.toNamed("/");},
                            child: Text("Done", style: TextStyle(fontSize: 20, color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Container(
                    width: _width,
                    height: _height*0.7,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 30,
                            color: Colors.grey,
                            offset: Offset(0,25),
                          ),
                        ]
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/images/payment_success.gif")
                                  ),
                                ),
                              ),
                              Text("Success !", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                              Text("Payment is completed", style: TextStyle(fontSize: 15)),
                            ],
                          ),

                          SizedBox(height: _height*0.04),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Order Number", style: TextStyle(fontSize: 15)),
                                  Text("012345678910", style: TextStyle(fontSize: 15)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Payment Method", style: TextStyle(fontSize: 15)),
                                  Text("Paylater", style: TextStyle(fontSize: 15)),
                                ],
                              ),
                              SizedBox(height: _height*0.02),
                              Container(
                                height: _height*0.2,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(color: kTextColor, width: 3),
                                    top: BorderSide(color: kTextColor, width: 3),
                                  ),
                                ),
                                child: ListView(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Product Name", style: TextStyle(fontSize: 15)),
                                        Text("Rp 500.000", style: TextStyle(fontSize: 15)),
                                      ],
                                    ),
                                    SizedBox(height: _height*0.01),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Product Name", style: TextStyle(fontSize: 15)),
                                        Text("Rp 700.000", style: TextStyle(fontSize: 15)),
                                      ],
                                    ),
                                    SizedBox(height: _height*0.01),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Product Name", style: TextStyle(fontSize: 15)),
                                        Text("Rp 250.000", style: TextStyle(fontSize: 15)),
                                      ],
                                    ),
                                    SizedBox(height: _height*0.01),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Product Name", style: TextStyle(fontSize: 15)),
                                        Text("Rp 150.000", style: TextStyle(fontSize: 15)),
                                      ],
                                    ),
                                    SizedBox(height: _height*0.01),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Product Name", style: TextStyle(fontSize: 15)),
                                        Text("Rp 200.000", style: TextStyle(fontSize: 15)),
                                      ],
                                    ),
                                    SizedBox(height: _height*0.01),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Product Name", style: TextStyle(fontSize: 15)),
                                        Text("Rp 50.000", style: TextStyle(fontSize: 15)),
                                      ],
                                    ),
                                    SizedBox(height: _height*0.01),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Product Name", style: TextStyle(fontSize: 15)),
                                        Text("Rp 64.000", style: TextStyle(fontSize: 15)),
                                      ],
                                    ),
                                    SizedBox(height: _height*0.01),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Product Name", style: TextStyle(fontSize: 15)),
                                        Text("Rp 350.000", style: TextStyle(fontSize: 15)),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: _height*0.02),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Total Amount", style: TextStyle(fontSize: 18)),
                                  Text("Rp xxxxxx", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Date", style: TextStyle(fontSize: 12)),
                                  Text("24/02/2022", style: TextStyle(fontSize: 12)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
