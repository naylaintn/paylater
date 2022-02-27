import 'package:flutter/material.dart';
import 'package:paylater_startup/product/store_page/store_body.dart';

import 'header.dart';

class store_page extends StatelessWidget {
  const store_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SizedBox(
          width: _width,
          height: double.maxFinite,
          child: SingleChildScrollView(
            physics: const PageScrollPhysics(),
            child: Column(
              children: [
                const store_header(),
                const SizedBox(height: 20),
                const store_tabBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
