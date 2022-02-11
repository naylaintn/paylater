import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/colors.dart';

class Balance extends StatelessWidget {

  double width;
  double height;

  Balance(this.width, this.height, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width*0.85,
      height: height/7,
      decoration: BoxDecoration(
        color: kColor1,
        borderRadius: BorderRadius.all(Radius.circular(35)),
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
          Container(
            width: width * 0.4,
            height: height * 0.1,
            decoration: const BoxDecoration(
              border: Border(right: BorderSide(color: kTextColor)),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    FaIcon(FontAwesomeIcons.wallet, size: 12, color: kTextColor),

                    SizedBox(width: 15),

                    Text("Account Balance", style: TextStyle(fontSize: 12, color: kTextColor)),
                  ],
                ),

                SizedBox(height: 10),

                const Text("Rp.15.000.000", style: TextStyle(fontSize: 17, color: kTextColor, fontWeight: FontWeight.bold)),
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
                    FaIcon(FontAwesomeIcons.moneyBill, size: 12, color: kTextColor),

                    SizedBox(width: 15),

                    Text("PayLater Balance", style: TextStyle(fontSize: 12, color: kTextColor)),
                  ],
                ),

                SizedBox(height: 10),

                const Text("Rp.5.000.000", style: TextStyle(fontSize: 17, color: kTextColor, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
