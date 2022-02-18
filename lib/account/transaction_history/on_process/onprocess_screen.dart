import 'package:flutter/material.dart';
import 'package:paylater_startup/account/transaction_history/on_process/pickup.dart';
import 'package:paylater_startup/util/colors.dart';

import 'delivery.dart';

class OnProcess extends StatefulWidget {
  const OnProcess({Key? key}) : super(key: key);

  @override
  _OnProcessState createState() => _OnProcessState();
}

class _OnProcessState extends State<OnProcess> with TickerProviderStateMixin {

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

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            height: 50,
            width: _width*0.5,
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
                    borderRadius: BorderRadius.circular(10),
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
            height: _height*3,
            child: TabBarView(
              controller: _tabController,
              children: [
                Delivery(),
                PickUp(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
