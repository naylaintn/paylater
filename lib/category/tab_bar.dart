import 'package:flutter/material.dart';
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
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            width: _width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
              child: const TabBar(
                padding: EdgeInsets.only(bottom: 15),
                  labelColor: kSecondaryColor,
                  unselectedLabelColor: kTextColor,
                  indicator: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: kSecondaryColor,
                        width: 2,
                      ),
                    ),
                  ),
                  tabs: [
                    Tab(text: "General"),
                    Tab(text: "Women"),
                    Tab(text: "Men"),
                  ]),
            ),
          SizedBox(
            height: _height,
            width: _width,
            child: TabBarView(
                children: [
                  SizedBox(
                    height: _height,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              borderRadius: const BorderRadius.all(Radius.circular(20)),
                            ),
                          );
                        }
                    ),
                  ),
                  SizedBox(
                    height: _height,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              borderRadius: const BorderRadius.all(Radius.circular(20)),
                            ),
                          );
                        }
                    ),
                  ),
                  SizedBox(
                    height: _height,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                              borderRadius: const BorderRadius.all(Radius.circular(20)),
                            ),
                          );
                        }
                    ),
                  ),
                ]
            ),
          )
        ],
      ),
    );
  }
}
