import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/util/colors.dart';

class ReviewTemplate extends StatelessWidget {
  const ReviewTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Container(
      width: _width,
      height: _height/4,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      margin: EdgeInsets.symmetric(vertical: 5),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("User212345", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                  Row(
                    children: const [
                      FaIcon(FontAwesomeIcons.solidStar, color: kColor2, size: 10),
                      FaIcon(FontAwesomeIcons.solidStar, color: kColor2, size: 10),
                      FaIcon(FontAwesomeIcons.solidStar, color: kColor2, size: 10),
                      FaIcon(FontAwesomeIcons.solidStar, color: kColor2, size: 10),
                      FaIcon(FontAwesomeIcons.solidStar, color: kColor2, size: 10),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text("5/5 Cleanliness", style: TextStyle(fontSize: 12, color: Colors.grey.withOpacity(0.8))),
                          Text("5/5 Hospitality", style: TextStyle(fontSize: 12, color: Colors.grey.withOpacity(0.8))),
                        ],
                      ),
                      SizedBox(width: _width*0.02),
                      Column(
                        children: [
                          Text("5/5 Service", style: TextStyle(fontSize: 12, color: Colors.grey.withOpacity(0.8))),
                          Text("5/5 Facility", style: TextStyle(fontSize: 12, color: Colors.grey.withOpacity(0.8))),
                        ],
                      ),
                    ],
                  ),

                ],
              ),
              Text("24/05/2021", style: TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),
          const Flexible(
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                style: TextStyle(fontSize: 14)),
          ),
        ],
      ),
    );
  }
}