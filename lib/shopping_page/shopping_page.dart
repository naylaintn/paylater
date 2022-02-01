import 'package:flutter/material.dart';
import 'package:paylater_startup/shopping_page/tab_bar2.dart';

class shopping_page extends StatelessWidget {
  const shopping_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SizedBox(
          width: _width,
          height: _height,
          child: SingleChildScrollView(
            child: Column(
              children: const [
                tab_bar2(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
