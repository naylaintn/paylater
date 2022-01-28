import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      height: 380,
      child: SingleChildScrollView(
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("PRICE DETAILS", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Subtotal", style: TextStyle(fontSize: 13)),
                    Text("Rp.xxxxx", style: TextStyle(fontSize: 13)),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Discount", style: TextStyle(fontSize: 13, color: Colors.green)),
                    Text("Rp.xxxxx", style: TextStyle(fontSize: 13, color: Colors.green)),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Estimated Tax", style: TextStyle(fontSize: 13)),
                    Text("Rp.xxxxx", style: TextStyle(fontSize: 13)),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Delivery", style: TextStyle(fontSize: 13)),
                    Text("Rp.xxxxx", style: TextStyle(fontSize: 13)),
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
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Total", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    Text("Rp.xxxxx", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 50),
                const Text("Payment Method", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: _width/2,
                        height: 40,
                        child: FlatButton(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          color: kPrimaryColor,
                          onPressed: (){},
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
                              borderRadius: BorderRadius.all(Radius.circular(10))),
                          color: kSecondaryColor.withOpacity(0.4),
                          onPressed: (){},
                          child: const Text("Account Balance",
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
          ),
        ),
      ),
    );
  }
}
