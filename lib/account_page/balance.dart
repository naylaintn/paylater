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
      width: width * 0.8,
      height: height * 0.16,
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: width * 0.4,
            height: height * 0.15,
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
                    FaIcon(FontAwesomeIcons.wallet, size: 9, color: Colors.white),

                    SizedBox(width: 15),

                    Text("Account Balance", style: TextStyle(fontSize: 10, color: Colors.white)),
                  ],
                ),

                SizedBox(height: 10),

                const Text("Rp.15.000.000", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          SizedBox(
            width: width * 0.4,
            height: height * 0.15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    FaIcon(FontAwesomeIcons.moneyBill, size: 9, color: Colors.white),

                    SizedBox(width: 15),

                    Text("PayLater Balance", style: TextStyle(fontSize: 10, color: Colors.white)),
                  ],
                ),

                SizedBox(height: 10),

                const Text("Rp.5.000.000", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
