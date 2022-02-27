import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/colors.dart';

class ServiceDescription extends StatelessWidget {
  const ServiceDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                child: Container(
                  width: _width*0.3,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          offset: Offset(0, 2),
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.message, color: kTextColor, size: 10),
                      SizedBox(width: 5),
                      Text("Send a Message", style: TextStyle(fontSize: 10)),
                    ],
                  ),
                ),
              ),

              SizedBox(width: _width*0.01),

              GestureDetector(
                onTap: (){},
                child: Container(
                  width: _width*0.3,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          offset: Offset(0, 2),
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.mapMarkerAlt, color: kTextColor, size: 10),
                      SizedBox(width: 5),
                      Text("Store Location", style: TextStyle(fontSize: 10)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: _height*0.02),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        offset: Offset(0, 2),
                        color: Colors.grey.withOpacity(0.4),
                      ),
                    ]
                ),
                child: Center(
                  child: FaIcon(FontAwesomeIcons.store, size: 20, color: Colors.grey.withOpacity(0.4)),
                ),
              ),
              SizedBox(height: _height*0.01),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("BRAND NAME", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Row(
                    children: [
                      FaIcon(FontAwesomeIcons.solidStar, color: kColor2, size: 12),
                      SizedBox(width: _width*0.01),
                      Text("5.0", style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: _height*0.02),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Opening Hours", style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              )),
              SizedBox(height: _height*0.01),
              Row(
                children: [
                  const FaIcon(FontAwesomeIcons.calendarDay, size: 12),
                  SizedBox(width: _width*0.01),
                  const Text("Monday, Wednesday, Friday, Saturday", style: TextStyle(
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                  )),
                ],
              ),
              Row(
                children: [
                  const FaIcon(FontAwesomeIcons.clock, size: 12),
                  SizedBox(width: _width*0.01),
                  const Text("09.00 - 12.00 & 15.00 - 18.00", style: TextStyle(
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                  )),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
