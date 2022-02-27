import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/service/description_page/review_design.dart';

class ServiceDescBody extends StatelessWidget {
  const ServiceDescBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: _width,
          height: _height*0.4,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: const BorderRadius.all(Radius.circular(35)),
          ),
        ),

        SizedBox(height: _height*0.02),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text("SERVICE NAME",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
            const Text("Nama Brand", style: TextStyle(
              fontSize: 12,
              fontStyle: FontStyle.italic,
            )),
            SizedBox(height: _height*0.01),
            const Text("Rp xxxxx", style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            )),
            SizedBox(height: _height*0.01),
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
            SizedBox(height: _height*0.02),
            const Text("Description",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: _height*0.01),
            Container(
              height: _height*0.2,
              width: _width,
              child: const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
                  style: TextStyle(
                    fontSize: 15,
                  )),
            ),
            SizedBox(height: _height*0.02),
            Text("Review",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        SizedBox(height: _height*0.01),

        ReviewTemplate(),
        ReviewTemplate(),
        ReviewTemplate(),
        ReviewTemplate(),
        ReviewTemplate(),
      ],
    );
  }
}
