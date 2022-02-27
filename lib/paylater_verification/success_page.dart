import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paylater_startup/util/colors.dart';

class success_page extends StatelessWidget {
  const success_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: _width,
            height: _height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/complete.gif"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                const Text("GOOD THINGS WILL COME \nTO THOSE WHO WAIT",
                  style: TextStyle(
                    fontSize: 33,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                const Text("You will have to wait 24 hours for verification \nuntil you can use PayLater",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 120),
                Container(
                  width: 200,
                  height: 60,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(35)),
                  ),
                  child: FlatButton(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(35))),
                    onPressed: (){Get.toNamed("/home");},
                    child: Text("Done", style: TextStyle(fontSize: 20, color: kPrimaryColor)),
                  ),
                ),
                SizedBox(height: 100),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
