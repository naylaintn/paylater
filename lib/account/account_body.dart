import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/account/balance.dart';
import 'package:paylater_startup/account/menu_list.dart';
import 'package:paylater_startup/util/colors.dart';
import 'package:get/get.dart';

class Account_Body extends StatelessWidget {
  const Account_Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0,2),
                  blurRadius: 15,
                  color: Colors.black.withOpacity(0.3),
                ),
              ]
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              children: [

                Balance(_width, _height),

                SizedBox(height: _height*0.03),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: _width*0.4,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(35)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,2),
                              blurRadius: 6,
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.message, color: kColor2, size: 20),
                          SizedBox(width: _width*0.03,),
                          Text("Messages", textAlign: TextAlign.center, style: TextStyle(fontSize: 13, color: kTextColor),),
                        ],
                      ),
                    ),

                    Container(
                          width: _width*0.4,
                          height: 50,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(35)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,2),
                              blurRadius: 6,
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ]
                      ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FaIcon(FontAwesomeIcons.ticketAlt, color: kColor3, size: 20),
                              SizedBox(width: _width*0.03,),
                              Text("Vouchers", textAlign: TextAlign.center, style: TextStyle(fontSize: 13, color: kTextColor),),
                            ],
                          ),
                        ),
                    ],
                ),

                SizedBox(height: _height*0.02),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: _width*0.4,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(35)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,2),
                              blurRadius: 6,
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ]
                      ),
                      child: FlatButton(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(35))),
                        onPressed:(){Get.toNamed("/balance_page");},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.wallet, size: 20, color: kColor1),
                            SizedBox(width: _width*0.03,),
                            Text("Balance", style: TextStyle(fontSize: 13, color: kTextColor), textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: _width*0.4,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(35)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,2),
                              blurRadius: 6,
                              color: Colors.black.withOpacity(0.3),
                            ),
                          ]
                      ),
                      child: FlatButton(
                        onPressed: (){Get.toNamed("/paylater_page");},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.moneyBill, size: 20, color: kSecondaryColor),
                            SizedBox(width: _width*0.03,),
                            Text("PayLater", style: TextStyle(fontSize: 13, color: kTextColor)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: _height*0.03),

                MenuList(),
              ],
            ),
          ),
      ],
    );
  }
}
