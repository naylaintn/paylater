import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: width,
      height: height/3,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(35)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0,2),
              blurRadius: 6,
              color: Colors.black.withOpacity(0.3),
            ),
          ]
      ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){Get.toNamed("/settings_page");},
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.settings),
                    SizedBox(width: 5,),
                    Text("SETTINGS"),
                  ],
                ),
              ),


              InkWell(
                onTap: (){Get.toNamed("/bills_page");},
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.article_rounded),
                    SizedBox(width: 5,),
                    Text("BILLS"),
                  ],
                ),
              ),


              InkWell(
                onTap: (){Get.toNamed("/TransactionHistory_page");},
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.history),
                    SizedBox(width: 5,),
                    Text("TRANSACTION HISTORY"),
                  ],
                ),
              ),


              InkWell(
                onTap: (){Get.toNamed("/bookings_page");},
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.bookmark),
                    SizedBox(width: 5,),
                    Text("BOOKINGS"),
                  ],
                ),
              ),


              InkWell(
                onTap: (){Get.toNamed("/CustomerService_page");},
                child: Row(
                  children: const <Widget>[
                    Icon(Icons.person_outline_outlined),
                    SizedBox(width: 5,),
                    Text("CUSTOMER SERVICE"),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
