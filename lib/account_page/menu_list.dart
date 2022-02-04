import 'package:flutter/material.dart';
import 'package:paylater_startup/account_page/details/menu_list_item.dart';
import '../util/size_config.dart' as size_conf;

class MenuList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return AspectRatio(
      aspectRatio: size_conf.screenSizeIndex(width)>2?size_conf.screenSizeIndex(width)>5?16/4:16/4:4/3,
      child: Container(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Column(
            children: [
              MenuListItem(Icons.arrow_circle_up, "TOP UP"),
              SizedBox(height: height * 0.01,),
              MenuListItem(Icons.article_rounded, "BILLS"),
              SizedBox(height: height * 0.01,),
              MenuListItem(Icons.article_outlined, "TRANSACTION HISTORY"),
              SizedBox(height: height * 0.01,),
              MenuListItem(Icons.credit_card, "CARD"),
              SizedBox(height: height * 0.01,),
              MenuListItem(Icons.person_outline_outlined, "CUSTOMER SERVICE"),
            ],
          ),
        ),
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(35)),
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
    );
  }
}
