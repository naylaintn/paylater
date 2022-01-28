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

class _tab_barState extends State<tab_bar> with TickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Column(
      mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            height: 50,
            width: _width,
            decoration: const BoxDecoration(
                color: scaffoldColor,
            ),
            child: TabBar(
                controller: _tabController,
                padding: const EdgeInsets.all(5),
                labelColor: kTextColor,
                unselectedLabelColor: Colors.grey.withOpacity(0.5),
                indicator: BoxDecoration(
                  color: kColor1,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(1,2),
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 2,
                    ),
                  ]
                ),
                tabs: const [
                  Tab(text: "General"),
                  Tab(text: "Women"),
                  Tab(text: "Men"),
                ]),
          ),

          SizedBox(
            width: _width,
            height: _height,
            child: TabBarView(
                controller: _tabController,
                children: const [
                  category_general(),
                  category_women(),
                  category_men(),
                ]
            ),
          ),
        ],
    );
  }
}
