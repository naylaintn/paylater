import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/colors.dart';

class TwoBoxes extends StatelessWidget {

  double width;
  double height;

  TwoBoxes(this.width, this.height, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.8,
      height: height * 0.1,
      decoration: const BoxDecoration(
        color: kSecondaryLightColor,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: width * 0.4,
            height: height * 0.1,
            decoration: const BoxDecoration(
              border: Border(right: BorderSide(color: Colors.white)),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    FaIcon(FontAwesomeIcons.wallet, size: 9, color: kTextColor),

                    SizedBox(width: 15),

                    Text("Account Balance", style: TextStyle(fontSize: 10, color: kTextColor)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: width * 0.4,
            height: height * 0.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    FaIcon(FontAwesomeIcons.moneyBill, size: 9, color: kTextColor),

                    SizedBox(width: 15),

                    Text("PayLater Balance", style: TextStyle(fontSize: 10, color: kTextColor)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
