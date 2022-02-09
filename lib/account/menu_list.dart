import 'package:flutter/material.dart';
import 'package:paylater_startup/account/menu_list_item.dart';

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
              MenuListItem(Icons.settings, "SETTINGS"),
              // SizedBox(height: height * 0.03,),
              MenuListItem(Icons.article_rounded, "BILLS"),
              // SizedBox(height: height * 0.03,),
              MenuListItem(Icons.history, "TRANSACTION HISTORY"),
              // SizedBox(height: height * 0.03,),
              MenuListItem(Icons.bookmark, "BOOKINGS"),
              // SizedBox(height: height * 0.03,),
              MenuListItem(Icons.person_outline_outlined, "CUSTOMER SERVICE"),
            ],
          ),
        ),
    );
  }
}
