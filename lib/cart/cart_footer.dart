import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:paylater_startup/util/colors.dart';

class CartFooter extends StatefulWidget {
  const CartFooter({Key? key}) : super(key: key);

  @override
  _CartFooterState createState() => _CartFooterState();
}

class _CartFooterState extends State<CartFooter> {
  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: _width,
      height: _height/1.5,
      child: Container(
          width: _width,
          height: 380,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.black.withOpacity(0.3),
                ),
              ]
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Price Details", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: _height*0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Subtotal", style: TextStyle(fontSize: 15)),
                        Text("Rp.xxxxx", style: TextStyle(fontSize: 15)),
                      ],
                    ),
                    SizedBox(height: _height*0.015),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Discount", style: TextStyle(fontSize: 15, color: Colors.green)),
                        Text("Rp.xxxxx", style: TextStyle(fontSize: 15, color: Colors.green)),
                      ],
                    ),
                    SizedBox(height: _height*0.015),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Estimated Tax", style: TextStyle(fontSize: 15)),
                        Text("Rp.xxxxx", style: TextStyle(fontSize: 15)),
                      ],
                    ),
                    SizedBox(height: _height*0.015),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Delivery", style: TextStyle(fontSize: 15)),
                        Text("Rp.xxxxx", style: TextStyle(fontSize: 15)),
                      ],
                    ),
                    Container(
                      width: _width,
                      height: 25,
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: kTextColor),
                        ),
                      ),
                    ),
                    SizedBox(height: _height*0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Total", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                        Text("Rp.xxxxx", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Address", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        GestureDetector(
                          onTap: (){},
                          child: Row(
                            children: [
                              FaIcon(FontAwesomeIcons.addressBook, size: 12),
                              SizedBox(width: 5),
                              Text("Change Address", style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: _width,
                      height: 60,
                      child: Row(
                        children: [
                          FaIcon(FontAwesomeIcons.mapPin, size: 20),
                          SizedBox(width: 10),
                          Flexible(
                            child: Text("Jl. Duta 10 Blok LL 06, Kemang Pramata 1, Bekasi Barat, Kec. Rawalumbu, 17116", style: TextStyle(fontSize: 15), textAlign: TextAlign.justify),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Payment Methods", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: _height*0.01),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            width: _width/2,
                            height: 40,
                            child: FlatButton(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(35))),
                              color: kPrimaryColor,
                              onPressed: (){Get.toNamed("/pin_screen");},
                              child: const Text("Paylater",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  )),
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            width: _width/2,
                            height: 40,
                            child: FlatButton(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(35))),
                              color: kSecondaryColor.withOpacity(0.4),
                              onPressed: (){Get.toNamed("/payment_method");},
                              child: const Text("Pay Now",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kPrimaryColor,
                                  )),
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
    );
  }
}
