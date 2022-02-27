import 'package:flutter/material.dart';
import 'package:paylater_startup/service/store_page/review.dart';
import 'package:paylater_startup/service/store_page/service.dart';
import 'package:paylater_startup/util/colors.dart';

class ServiceStoreBody extends StatefulWidget {
  const ServiceStoreBody({Key? key}) : super(key: key);

  @override
  _ServiceStoreBodyState createState() => _ServiceStoreBodyState();
}

class _ServiceStoreBodyState extends State<ServiceStoreBody> with TickerProviderStateMixin {

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
                Tab(text: "Service"),
                Tab(text: "Review"),
              ]),
        ),

        SizedBox(
          width: _width,
          height: _height*200,
          child: TabBarView(
              controller: _tabController,
              children: const [
                TabBarService(),
                TabBarReview(),
              ]
          ),
        ),
      ],
    );
  }
}
