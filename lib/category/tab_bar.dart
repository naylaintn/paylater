import 'package:flutter/material.dart';
import 'package:paylater_startup/category/category_general.dart';
import 'package:paylater_startup/category/category_men.dart';
import 'package:paylater_startup/category/category_women.dart';
import 'package:paylater_startup/util/colors.dart';

class tab_bar extends StatefulWidget {
  const tab_bar({Key? key}) : super(key: key);

  @override
  _tab_barState createState() => _tab_barState();
}

class _tab_barState extends State<tab_bar> {

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            height: 50,
            width: _width,
              color: scaffoldColor,
              child: TabBar(
                padding: EdgeInsets.all(5),
                  labelColor: Colors.white,
                  unselectedLabelColor: kTextColor,
                  indicator: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  tabs: [
                    Tab(text: "General"),
                    Tab(text: "Women"),
                    Tab(text: "Men"),
                  ]),
            ),

          SizedBox(
            width: _width,
            height: _height,
            child: TabBarView(
                children: [
                  category_general(),
                  category_women(),
                  category_men(),
                ]
            ),
          ),
        ],
      ),
    );
  }
}
