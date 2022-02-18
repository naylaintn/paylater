import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paylater_startup/service/description_page/body.dart';
import 'package:paylater_startup/util/colors.dart';

class ServiceDesc extends StatelessWidget {
  const ServiceDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: _width,
        height: _height,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ServiceDescBody(),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: _width,
        height: 80,
        color: scaffoldColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Row(
                      children: [
                        FaIcon(FontAwesomeIcons.calendarDay, size: 20),
                        SizedBox(width: _width*0.02),
                        Text("Choose Date", style: TextStyle(fontSize: 15, color: Colors.grey)),
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Row(
                      children: [
                        FaIcon(FontAwesomeIcons.clock, size: 20),
                        SizedBox(width: _width*0.02),
                        Text("Choose Time", style: TextStyle(fontSize: 15, color: Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: _width*0.4,
              height: 40,
              child: FlatButton(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(35))),
                color: kPrimaryColor,
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    FaIcon(FontAwesomeIcons.shoppingCart, size: 15, color: Colors.white),
                    SizedBox(width: 10),
                    Text("Book Now",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
