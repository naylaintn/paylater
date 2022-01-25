import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/balance_information.dart';
import 'package:paylater_startup/util/colors.dart';
import '../util/size_config.dart' as size_conf;

Widget Header(double _width, double _height) {

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
        aspectRatio: size_conf.screenSizeIndex(_width)>2?size_conf.screenSizeIndex(_width)>5?16/4:16/4:4.2/3,
        child: Container(
          width: _width,
          height: _height,
          decoration: const BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
          ),
        ),
      ),

      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),

          const Text("LOGO DISINI", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, fontFamily: 'Gilroy')),

          const SizedBox(height: 10),

          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Container(
                width: _width*0.64,
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: const TextField(
                  style: TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 14),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: "Search Product / Brand",
                    hintStyle: TextStyle(fontSize: 10),
                    prefixIcon: Icon(Icons.search, color: kTextColor, size: 20),
                  ),
                ),
              ),

              SizedBox(width: _width*0.03),

              Container(
                padding: EdgeInsets.all(5),
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const Icon(Icons.message, color: kTextColor, size: 15),
              ),

              SizedBox(width: _width*0.01),

              Container(
                padding: EdgeInsets.all(5),
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.notifications, color: kTextColor, size: 15),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: widgetHeaders.map((widget) => headerWidget(widget)).toList(),
            ),
          ),

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
  return Padding(
    padding: EdgeInsets.all(15),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(5),
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Icon(widget.icon.icon, color: kTextColor, size: 17),
        ),
        const SizedBox(height: 10),
        Text(widget.title, style: const TextStyle(fontSize: 10, color: kTextColor, fontWeight: FontWeight.bold)),
      ],
    ),
  );
}