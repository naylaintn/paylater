import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/paylater_verification/ktp.dart';
import 'package:paylater_startup/paylater_verification/slip_gaji.dart';
import 'package:paylater_startup/paylater_verification/verification_form.dart';
import 'package:paylater_startup/util/colors.dart';
import 'package:get/get.dart';

class payLater_Verification extends StatefulWidget {
  const payLater_Verification({Key? key}) : super(key: key);

  @override
  _payLater_VerificationState createState() => _payLater_VerificationState();
}

class _payLater_VerificationState extends State<payLater_Verification> {
  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 2,
        backgroundColor: scaffoldColor,
        title: const Text("PayLater Verification", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: kTextColor)),
      ),
      body: SafeArea(
        child: SizedBox(
          width: _width,
          height: _height,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  verification_form(),
                  SizedBox(height: 30),
                  KTP_form(),
                  SizedBox(height: 30),
                  Slip_Gaji(),
                  SizedBox(height: 30),
                  Container(
                    width: 200,
                    height: 60,
                    decoration: const BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                    ),
                    child: FlatButton(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(35))),
                      onPressed: (){Get.toNamed("/verif_success");},
                      child: Text("Verify", style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
