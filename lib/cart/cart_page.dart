import 'package:flutter/material.dart';
import 'package:paylater_startup/cart/add_voucher.dart';
import 'package:paylater_startup/cart/cart_footer.dart';
import 'package:paylater_startup/cart/cart_template.dart';
import 'package:paylater_startup/cart/cart_template_pickup.dart';
import 'package:paylater_startup/util/colors.dart';

import 'cart_template_pickup.dart';

class cartPage extends StatelessWidget{
  const cartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 2,
        backgroundColor: scaffoldColor,
        title: const Text("Cart", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: kTextColor)),
      ),
      body: SizedBox(
        width: _width,
        height: _height,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: AddVoucher(),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return TemplatePickUp();
                }
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return cart_template();
                }
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: CartFooter(),
            ),
          ],
        ),
      ),
    );
  }

}