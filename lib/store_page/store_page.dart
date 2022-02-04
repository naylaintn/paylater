import 'package:flutter/material.dart';
import 'package:paylater_startup/store_page/header.dart';
import 'package:paylater_startup/store_page/store_body.dart';

class store_page extends StatelessWidget {
  const store_page({Key? key}) : super(key: key);

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
            physics: const PageScrollPhysics(),
            child: Column(
              children: [
                Stack(
                  children: [
                    const store_header(),
                    Positioned(
                      top: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: AppBar(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        iconTheme: const IconThemeData(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
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
