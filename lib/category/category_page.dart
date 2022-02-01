import 'package:flutter/material.dart';
import 'package:paylater_startup/category/tab_bar.dart';
import 'package:paylater_startup/util/colors.dart';

class CategoryPage extends StatelessWidget{
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          elevation: 2,
          backgroundColor: scaffoldColor,
          centerTitle: true,
          title: const Text("Category", style: TextStyle(color: kTextColor)),
        ),
        body: SafeArea(
          child: SizedBox(
            width: _width,
            height: _height ,
            child: ListView(
                  children: const [
                    tab_bar(),
                  ],
            ),
          ),
        ),
    );
  }
}
