import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/colors.dart';

Widget Header(double _width, double _height) {

  return Column(
    children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: _height * 0.03),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: kTextColor,
                  child: FaIcon(FontAwesomeIcons.user, size: 15, color: Colors.white),
                ),
                SizedBox(width: 10),
                const Text("Nayla", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              ],
            ),

            SizedBox(height: _height * 0.01),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Verified", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                SizedBox(width: 10),
                FaIcon(FontAwesomeIcons.solidCheckCircle, size: 15, color: kPrimaryColor,),
              ],
            ),
            SizedBox(height: _height * 0.01),
            Row(
                children:const [
                  Text("+62819181981", style: TextStyle(fontSize: 14)),
                  SizedBox(width: 10),
                  Text("|", style: TextStyle(fontSize: 14)),
                  SizedBox(width: 10),
                  Text("email@email.com", style: TextStyle(fontSize: 14)),
                ]
            ),
            SizedBox(height: _height * 0.02),
            Row(
              children: const [
                Icon(Icons.place),
                Text("Address", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              ],
            ),

            SizedBox(height: _height*0.1),
          ],
        ),
      ),
    ],
  );
}