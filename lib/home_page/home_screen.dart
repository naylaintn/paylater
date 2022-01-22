import 'package:flutter/material.dart';
import 'package:paylater_startup/home_page/bottom_bar.dart';
import 'package:paylater_startup/home_page/header.dart';
import 'package:paylater_startup/home_page/home_body.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: _width,
          height: _height,
          child: SingleChildScrollView(
            child: Wrap(
              children: [
                Header(_width, _height),
                HomeBody(_width, _height),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const bottomNavigationBar(),
    );
  }
}
