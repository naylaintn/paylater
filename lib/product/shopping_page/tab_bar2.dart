import 'package:flutter/material.dart';
import 'package:paylater_startup/product/shopping_page/product_grid.dart';
import 'package:paylater_startup/util/colors.dart';

class tab_bar2 extends StatefulWidget {
  const tab_bar2({Key? key}) : super(key: key);

  @override
  _tab_bar2State createState() => _tab_bar2State();
}

class _tab_bar2State extends State<tab_bar2> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(vsync: this, length: 6);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
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
            isScrollable: true,
              controller: tabController,
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
                Tab(text: "All"),
                Tab(text: "Category 1"),
                Tab(text: "Category 2"),
                Tab(text: "Category 3"),
                Tab(text: "Category 4"),
                Tab(text: "Category 5"),
              ]),
        ),

        SizedBox(
          width: _width,
          height: _height,
          child: TabBarView(
              controller: tabController,
              children: const [
                product_grid(),
                product_grid(),
                product_grid(),
                product_grid(),
                product_grid(),
                product_grid(),
              ]
          ),
        ),
      ],
    );
  }
}

