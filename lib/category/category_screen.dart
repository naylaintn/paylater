import 'package:flutter/material.dart';
import 'package:paylater_startup/category/tab_bar.dart';
import 'package:paylater_startup/util/colors.dart';

class category_screen extends StatelessWidget {
  const category_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Category", style: TextStyle(color: kTextColor)),
        ),
        body: SafeArea(
          child: SizedBox(
            height: _height,
            width: _width,
            child: const SingleChildScrollView(
              child: tab_bar(),
            ),
          ),
        ),
    );
  }
}
