import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:paylater_startup/home_page/balance_information.dart';
import 'package:paylater_startup/util/colors.dart';

import '../util/size_config.dart' as size_conf;

Widget Header(double _width, double _height, String name) {

  List<widgetHeader> widgetHeaders = [
    widgetHeader(title: "Pay", icon: FaIcon(FontAwesomeIcons.arrowUp)),
    widgetHeader(title: "PayLater", icon: FaIcon(FontAwesomeIcons.clock)),
    widgetHeader(title: "Top Up", icon: FaIcon(FontAwesomeIcons.plusSquare)),
    widgetHeader(title: "Transaction", icon: FaIcon(FontAwesomeIcons.history)),
  ];

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

      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 5, 0),
                child:  Icon(Icons.message, color: kTextColor, size: 20),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 15, 0),
                child: Icon(Icons.notifications, color: kTextColor, size: 20),
                ),
            ],
          ),

          const SizedBox(height: 8),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 50,
                      height: 50,
                      child: FaIcon(FontAwesomeIcons.solidUserCircle, color: kTextColor, size: 50),
                    ),
                    Text("Hello, $name", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: kTextColor)),
                  ],
                ),

                const SizedBox(height: 25),

                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: widgetHeaders.map((widget) => headerWidget(widget)).toList(),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          balanceInformation(_width, _height),
        ],
      ),
    ],
  );
}

class widgetHeader {
  String title;
  FaIcon icon;

  widgetHeader({
    this.title = "",
    this.icon = const FaIcon(FontAwesomeIcons.graduationCap),
  });
}

Widget headerWidget (widgetHeader widget) {
  return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              color: Color(0xFFDEE652),
              borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0,4),
                  blurRadius: 10,
                  color: Colors.grey.withOpacity(0.4),
                ),
              ]
          ),
          child: FlatButton(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            onPressed: (){Get.toNamed("/verif");},
            child: Icon(widget.icon.icon, color: kTextColor, size: 20),
          ),
        ),
        const SizedBox(height: 10),
        Text(widget.title, style: const TextStyle(fontSize: 10, color: kTextColor, fontWeight: FontWeight.bold)),
      ],
  );
}