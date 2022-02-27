import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paylater_startup/util/colors.dart';
import 'package:get/get.dart';
import 'completed_screen.dart';

class CompletedTemplate extends StatelessWidget {

  final completedData completeddata;

  CompletedTemplate(this.completeddata);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Container(
      width: _width,
      height: _height/5,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.grey.withOpacity(0.4),
            ),
          ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Purchase Date: ${completeddata.date}", style: TextStyle(fontSize: 10, color: Colors.grey)),
              GestureDetector(
                onTap: (){Get.toNamed("/bookingDetail_page");},
                child: SizedBox(
                  width: 20,
                  height: 10,
                  child: SvgPicture.asset("assets/svg/more.svg", color: kPrimaryColor),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                children: [
                  SizedBox(
                    width: _width*0.45,
                    child: Text("${completeddata.brand}",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Text("${completeddata.price}", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ],
          ),
          Text("${completeddata.service}", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          Text("Location: ${completeddata.location}", style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic)),
          Text("Expired Date: ${completeddata.expire}", style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic)),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                child: Text("Book Again", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: kPrimaryColor)),
              ),
              SizedBox(width: _width*0.03),
              GestureDetector(
                child: Text("Review", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: kPrimaryColor)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
