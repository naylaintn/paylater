import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paylater_startup/account_page/balance.dart';
import '../util/size_config.dart' as size_conf;

Widget Header(double _width, double _height) {

  return Stack(
    alignment: Alignment.topCenter,
    children: [

      AspectRatio(
        aspectRatio: size_conf.screenSizeIndex(_width)>2?size_conf.screenSizeIndex(_width)>5?16/4:16/4:4/3,
        child: Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(35), bottomRight: Radius.circular(35)),
              color: Colors.white.withOpacity(0.85),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0,2),
                  blurRadius: 15,
                  color: Colors.black.withOpacity(0.3),
                ),
              ]
          ),
        ),
      ),

      Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: _height * 0.1),

            Row(
              children: [
                const Text("Nayla", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, fontFamily: 'Gilroy')),
                SizedBox(width: _width * 0.35,),
                // Container(
                //     margin: EdgeInsets.symmetric(horizontal: 30,),
                //   child: const Text("NAMA", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15, fontFamily: 'Gilroy')),
                //   decoration: const BoxDecoration(
                //     color: scaffoldColor,
                //     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
                //   )
                // )
              ],
            ),

            const Text("Verified", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, fontFamily: 'Gilroy')),
            SizedBox(height: _height * 0.01),
            Row(
              children:const [
                Text("+62819181981", style: TextStyle(fontSize: 14, fontFamily: 'Gilroy')),
                Text("|", style: TextStyle(fontSize: 14, fontFamily: 'Gilroy')),
                Text("email@email.com", style: TextStyle(fontSize: 14, fontFamily: 'Gilroy')),
              ]
            ),
            SizedBox(height: _height * 0.03),
            Row(
              children: const [
                Icon(Icons.place),
                Text("Address", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, fontFamily: 'Gilroy')),
              ],
            ),

            SizedBox(height: _height * 0.03),

            Container(
                margin: EdgeInsets.symmetric(horizontal: 5,),
                child: Balance(_width, _height)
            ),
          ],
        ),
      ),
    ],
  );
}