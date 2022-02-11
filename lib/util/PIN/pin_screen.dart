import 'package:flutter/material.dart';
import 'package:paylater_startup/util/PIN/pin_body.dart';
import 'package:paylater_startup/util/colors.dart';
import 'package:get/get.dart';

class PinScreen extends StatelessWidget {
  const PinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Pin Verification", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: kTextColor),),
        centerTitle: true,
      ),
      body: Container(
        width: _width,
        height: _height,
        child: ListView(
          children: [
            PinBody(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){Get.toNamed("/payment_success");},
                  child: Text("Temporary Next", style: TextStyle(color: Colors.grey.withOpacity(0.6))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
