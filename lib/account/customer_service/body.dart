import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:paylater_startup/util/colors.dart';

class CustomerServiceBody extends StatelessWidget {
  const CustomerServiceBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Container(
          width: _width*0.5,
          height: _height*0.1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0,2),
                  blurRadius: 6,
                  color: Colors.black.withOpacity(0.3),
                ),
              ]
          ),
          child: FlatButton(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(35))),
            onPressed: (){},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.questionCircle, color: kColor3, size: 20),
                SizedBox(width: _width*0.03,),
                Text("FAQ", textAlign: TextAlign.center, style: TextStyle(fontSize: 13, color: kTextColor),),
              ],
            ),
          ),
        ),

        SizedBox(height: _height*0.02),

        Container(
          width: _width*0.5,
          height: _height*0.1,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0,2),
                  blurRadius: 6,
                  color: Colors.black.withOpacity(0.3),
                ),
              ]
          ),
          child: FlatButton(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(35))),
            onPressed: (){},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.headset_mic_outlined, color: kColor2, size: 20),
                SizedBox(width: _width*0.03,),
                Text("Send a message", textAlign: TextAlign.center, style: TextStyle(fontSize: 13, color: kTextColor),),
              ],
            ),
          ),
        ),

        SizedBox(height: _height*0.02),

        Container(
          width: _width*0.5,
          height: _height*0.1,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0,2),
                  blurRadius: 6,
                  color: Colors.black.withOpacity(0.3),
                ),
              ]
          ),
          child: FlatButton(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(35))),
            onPressed: (){},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.email_outlined, color: kColor1, size: 20),
                SizedBox(width: _width*0.03,),
                Text("Send an email", textAlign: TextAlign.center, style: TextStyle(fontSize: 13, color: kTextColor),),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
