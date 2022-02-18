import 'package:flutter/material.dart';
import 'package:paylater_startup/product/store_page/pickup.dart';
import 'package:paylater_startup/util/colors.dart';

import 'delivery.dart';

class store_tabBar extends StatefulWidget {
  const store_tabBar({Key? key}) : super(key: key);

  @override
  _store_tabBarState createState() => _store_tabBarState();
}

class _store_tabBarState extends State<store_tabBar> with TickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 2);
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
                Tab(text: "Delivery"),
                Tab(text: "Pick Up"),
              ]),
        ),

        SizedBox(
          width: _width,
          height: _height*200,
          child: TabBarView(
              controller: _tabController,
              children: const [
                store_delivery(),
                store_pickUp(),
              ]
          ),
        ),
      ],
    );
  }
}
